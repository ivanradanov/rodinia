#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <chrono>
#include <cuda.h>
#include <cuda_fp16.h>

/*
 * Copyright (c) 2020-2021, NVIDIA CORPORATION.  All rights reserved.
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

// width is hidden_dim and height is seq_len
__global__ void gelu_bias_loop(__half* src, const __half* bias, int width, int height)
{
  int batch = blockIdx.x;
  int x     = blockIdx.y;  // seq length
  int y     = threadIdx.x * 2;

  if (x < height) {
    int    index = batch * width * height + x * width;
    half2  v_src;
    half2  v_bias;
    half2  v;
    float2 t;
    for (; y < width; y = y + blockDim.x * 2) {
      v_bias = ((half2*)bias)[y >> 1];
      v_src  = ((half2*)src)[(index + y) >> 1];
      v      = __hadd2(v_src, v_bias);
      t      = __half22float2(v);
      t.x    = (0.5f * t.x * (1.0f + tanhf(0.79788456f * (t.x + 0.044715f * t.x * t.x * t.x))));
      t.y    = (0.5f * t.y * (1.0f + tanhf(0.79788456f * (t.y + 0.044715f * t.y * t.y * t.y))));

      ((half2*)src)[(index + y) >> 1] = __float22half2_rn(t);
    }
  }
}

int main(int argc, char* argv[])
{
  if (argc != 5) {
    printf("Usage: %s <batch> <sequence length> <hidden dimension> <repeat>\n", argv[0]);
    return 1;
  }

  const int batch_size = atoi(argv[1]);
  const int seq_len = atoi(argv[2]);
  const int hidden_dim = atoi(argv[3]);
  const int repeat = atoi(argv[4]);

  const size_t src_size = (size_t)batch_size * seq_len * hidden_dim;

  const size_t src_size_bytes =  src_size * sizeof(__half);
  const int bias_size_bytes = hidden_dim * sizeof(__half);

  srand(123);
  __half* output = (__half*) malloc (src_size_bytes);
  for (size_t i = 0; i < src_size; i++) {
    output[i] = __float2half(rand() / (float)RAND_MAX);
  }

  __half* bias = (__half*) malloc (bias_size_bytes);
  for (int i = 0; i < hidden_dim; i++) {
    bias[i] = __float2half(-6 + (rand() % 12)); 
  }

  __half* d_output;
  cudaMalloc((void**)&d_output, src_size_bytes);
  cudaMemcpy(d_output, output, src_size_bytes, cudaMemcpyHostToDevice);

  __half* d_bias;
  cudaMalloc((void**)&d_bias, bias_size_bytes);
  cudaMemcpy(d_bias, bias, bias_size_bytes, cudaMemcpyHostToDevice);
  
  dim3 block(1024, 1);
  dim3 grid(batch_size, seq_len);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int i = 0; i < repeat; i++) {
    gelu_bias_loop <<<grid, block>>> (d_output, d_bias, hidden_dim, seq_len);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average kernel execution time %f (ms)\n", (time * 1e-6f) / repeat);

  cudaMemcpy(output, d_output, src_size_bytes, cudaMemcpyDeviceToHost);

  float sum = 0;
  for (size_t i = 0; i < src_size; i++) {
    sum += __half2float(output[i]);
  }
  printf("Checksum = %f\n", sum / src_size);
  
  cudaFree(d_output);
  cudaFree(d_bias);
  free(output);
  free(bias);

  return 0;
}
