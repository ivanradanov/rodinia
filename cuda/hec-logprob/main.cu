/*
 * Copyright (c) 2022, NVIDIA CORPORATION.  All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdio.h>
#include <stdlib.h>
#include <float.h>
#include <math.h>
#include <chrono>
#include <random>
#include <cuda_fp16.h>
#include <cuda_runtime.h>
#include "reduce.h"

template<typename T>
__global__ void log_probs_kernel(
    float*       log_probs,
    const T*     logits,
    const int*   ids,
    const int*   lengths,
    const int    max_input_length,
    const int    batch_size,
    const int    vocab_size,
    const int    vocab_size_padded,
    bool         batch_first)
{
  // Calculate the log probability from logits.
  //   log_probs[t, :] = log(softmax(logits))[ids[t + 1, :]]
  //
  // log_probs: [max_length - 1, batch_size] or [batch_size, max_length -1],
  //     log probabilities of each token.
  // logits: [max_length, batch_size, vocab_size_padded] or [batch_size, max_length, vocab_size_padded]
  // lengths: [batch_size], sequence lengths
  // ids: [max_length, batch_size], token ids.
  // batch_size: [1], batch_size. in case of beam > 1, batch x beam.
  // vocab_size: [1], vocab_size,
  // vocab_size: [1], vocab_size_padded, padded vocab size.

  const bool IS_FP16   = std::is_same<T, half>::value;
  const T    MAX_T_VAL = (IS_FP16) ? HALF_FLT_MAX : FLT_MAX;

  int tidx = threadIdx.x;                            // vocab dim
  int bidx = batch_first ? blockIdx.x : blockIdx.y;  // batch dim
  int step = batch_first ? blockIdx.y : blockIdx.x;  // step dim

  __shared__ float s_max_logit;

  if (bidx < batch_size && step < lengths[bidx] - 1) {
    // Compute the address of logits to data for the current batch
    int step_offset  = batch_first ? step * vocab_size_padded : step * batch_size * vocab_size_padded;
    int batch_offset = batch_first ? bidx * max_input_length * vocab_size_padded : bidx * vocab_size_padded;
    logits += step_offset + batch_offset;

    // Find max(logits)
    float local_max = -MAX_T_VAL;
    float val       = -MAX_T_VAL;
    for (int i = tidx; i < vocab_size; i += blockDim.x) {
      val       = static_cast<float>(logits[i]);
      local_max = fmaxf(local_max, val);
    }

    float max_val = blockReduceMax<float>(local_max);
    if (tidx == 0) {
      s_max_logit = max_val;
    }
    __syncthreads();

    // Calculate the denominator: sum_i exp(logits[i])
    float local_sum_exp = 0.0f;
    for (int i = tidx; i < vocab_size; i += blockDim.x) {
      val = __expf(static_cast<float>(logits[i]) - s_max_logit);
      local_sum_exp += val;
    }

    float sum_exp = blockReduceSum<float>(local_sum_exp);
    if (tidx == 0) {
      int idx = batch_first ? step + bidx * (max_input_length - 1) : step * batch_size + bidx;
      // log_probs[step, ...] is the log probability of a token at step t + 1.
      int token_idx = batch_first ? step + 1 + bidx * max_input_length : (step + 1) * batch_size + bidx;
      log_probs[idx] = static_cast<float>(logits[ids[token_idx]]) - s_max_logit - __logf(sum_exp + 1e-9f);
    }
  }
}

__global__ void accumulate_log_probs(
          float* cum_log_probs,
    const float* log_probs,
    const int*   lengths,
    const int    max_input_length,
    const int    batch_size,
    const bool   batch_first)
{
  // Accumulate the log probability along the sequence dimension.
  //   cum_log_probs[j] = sum_i log(softmax(logits))[ids[i,j]]
  //
  // cum_log_probs: [batch_size], cumulative log probability
  // log_probs: [max_length - 1, batch_size] or [batch_size, max_length - 1],
  //   log probability of each token
  // lengths: [batch_size], sequence lengths
  // batch_size: [1], batch_size. in case of beam > 1, batch x beam.

  int bidx = blockIdx.x;   // batch dim
  int tidx = threadIdx.x;  // step dim

  int length = lengths[bidx];
  // reposition logits to data for the current batch.
  log_probs += batch_first ? bidx * (max_input_length - 1) : bidx;
  int stride = batch_first ? 1 : batch_size;  // stride along with seq dim.
  float local_accum = 0.0f;
  for (int step = tidx; step < length - 1; step += blockDim.x) {
    local_accum += static_cast<float>(log_probs[step * stride]);
  }
  float accum = blockReduceSum<float>(local_accum);
  if (tidx == 0) {
    cum_log_probs[bidx] = accum;
  }
}


int main(int argc, char* argv[])
{
  if (argc != 5) {
    printf("Usage: %s <maximum sequence length> <batch size> <vocabulary size> <repeat>\n", argv[0]);
    return 1;
  }
  const int max_length = atoi(argv[1]);  // max input length
  const int batch_size = atoi(argv[2]);
  const int vocab_size = atoi(argv[3]);
  const int repeat = atoi(argv[4]);

  const int vocab_size_padded = (vocab_size + 31) / 32 * 32;

  size_t logits_size = (size_t)batch_size * max_length * vocab_size_padded;
  size_t logits_size_bytes = logits_size * sizeof(float);

  size_t log_probs_size = (size_t)batch_size * (max_length - 1);
  size_t log_probs_size_bytes = log_probs_size * sizeof(float);

  size_t batch_size_bytes = batch_size * sizeof(float);
  size_t length_size_bytes = batch_size * sizeof(int);

  float *h_logits = (float*) malloc (logits_size_bytes);

  std::default_random_engine g (123);
  std::uniform_real_distribution<float> distr (-6.f, 6.f);

  for (size_t i = 0; i < logits_size; i++)
    h_logits[i] = distr(g);

  float *d_logits;
  cudaMalloc((void**)&d_logits, logits_size_bytes);
  cudaMemcpy(d_logits, h_logits, logits_size_bytes, cudaMemcpyHostToDevice);

  float *h_log_probs = (float*) malloc (log_probs_size_bytes);
  float *d_log_probs;
  cudaMalloc((void**)&d_log_probs, log_probs_size_bytes);

  float *h_cum_log_probs = (float*) malloc (batch_size_bytes);
  float *d_cum_log_probs;
  cudaMalloc((void**)&d_cum_log_probs, batch_size_bytes);

  int *h_lengths = (int*) malloc (length_size_bytes);

  srand(123);
  for (int i = 0; i < batch_size; i++)
    h_lengths[i] = rand() % max_length + max_length / 2;

  int *d_lengths;
  cudaMalloc((void**)&d_lengths, length_size_bytes);
  cudaMemcpy(d_lengths, h_lengths, length_size_bytes, cudaMemcpyHostToDevice);

  size_t ids_size = batch_size * max_length;
  size_t ids_size_bytes = ids_size * sizeof(int);

  int *h_ids = (int*) malloc (ids_size_bytes);
  for (size_t i = 0; i < ids_size; i++)
    h_ids[i] = rand() % vocab_size;

  int *d_ids;
  cudaMalloc((void**)&d_ids, ids_size_bytes);
  cudaMemcpy(d_ids, h_ids, ids_size_bytes, cudaMemcpyHostToDevice);

  // A batched version of log prob computation.
  //
  // cum_log_probs: [batch_size]
  // logits: [max_input_length, batch_size, vocab_size] or [batch_size, max_input_length, vocab_size]
  // input_ids: [max_input_length, batch_size] or [max_input_length, batch_size]
  // input_lengths: [batch_size]

  // TODO: batch_first = 0 does not produce the same results for each run
  bool batch_first = 1;

  const int block_size = vocab_size < 1024 ? (vocab_size + 31) / 32 * 32 : 1024;
  const int gx = batch_first ? batch_size : max_length - 1;
  const int gy = batch_first ? max_length - 1 : batch_size;

  dim3 grid(gx, gy);
  dim3 block(block_size, 1);

  cudaDeviceSynchronize();

  auto start = std::chrono::steady_clock::now();

  for (int i = 0; i < repeat; i++) {

    log_probs_kernel<float><<<grid, block>>>(
      d_log_probs,
      d_logits,
      d_ids,
      d_lengths,
      max_length,
      batch_size,
      vocab_size,
      vocab_size_padded,
      batch_first);

    accumulate_log_probs<<<batch_size, block>>>(
      d_cum_log_probs,
      d_log_probs,
      d_lengths,
      max_length,
      batch_size,
      batch_first);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average execution time of kernels: %f (us)\n", (time * 1e-3f) / repeat);

  cudaMemcpy(h_log_probs, d_log_probs, log_probs_size_bytes, cudaMemcpyDeviceToHost);
  cudaMemcpy(h_cum_log_probs, d_cum_log_probs, batch_size_bytes, cudaMemcpyDeviceToHost);

  float checksum = 0, checkmax = FLT_MIN, checkmin = FLT_MAX;
  for (int i = 0; i < batch_size; i++) {
    checksum += h_cum_log_probs[i];
    checkmax = fmax(checkmax, h_cum_log_probs[i]);
    checkmin = fmin(checkmin, h_cum_log_probs[i]);
  }
  printf("Checksum = %f\n", checksum / batch_size);
  printf("Max cumulative log probs = %f\n", checkmax);
  printf("Min cumulative log probs = %f\n", checkmin);

  cudaFree(d_cum_log_probs);
  cudaFree(d_log_probs);
  cudaFree(d_logits);
  cudaFree(d_ids);
  cudaFree(d_lengths);

  free(h_cum_log_probs);
  free(h_log_probs);
  free(h_logits);
  free(h_ids);
  free(h_lengths);

  return 0;
}
