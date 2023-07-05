/**
 * Copyright 2015 NVIDIA Corporation.  All rights reserved.
 *
 * Please refer to the NVIDIA end user license agreement (EULA) associated
 * with this source code for terms and conditions that govern your use of
 * this software. Any use, reproduction, disclosure, or distribution of
 * this software and related documentation outside the terms of the EULA
 * is strictly prohibited.
 *
 */
#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <chrono>
#include <cuda.h>
#include <cuda_fp16.h>

#define NUM_OF_BLOCKS 1024
#define NUM_OF_THREADS 128

__forceinline__ __device__ 
void reduceInShared_intrinsics(half2 * const v)
{
  int lid = threadIdx.x;  
  if(lid<64) v[lid] = __hadd2( v[lid], v[lid+64]);
  __syncthreads();
  if(lid<32) v[lid] = __hadd2( v[lid], v[lid+32]);
  __syncthreads();
  if(lid<32) v[lid] = __hadd2( v[lid], v[lid+16]);
  __syncthreads();
  if(lid<32) v[lid] = __hadd2( v[lid], v[lid+8]);
  __syncthreads();
  if(lid<32) v[lid] = __hadd2( v[lid], v[lid+4]);
  __syncthreads();
  if(lid<32) v[lid] = __hadd2( v[lid], v[lid+2]);
  __syncthreads();
  if(lid<32) v[lid] = __hadd2( v[lid], v[lid+1]);
  __syncthreads();
}

__forceinline__ __device__
void reduceInShared_native(half2 * const v)
{
  int lid = threadIdx.x;  
  if(lid<64) v[lid] = v[lid] + v[lid+64];
  __syncthreads();
  if(lid<32) v[lid] = v[lid] + v[lid+32];
  __syncthreads();
  if(lid<32) v[lid] = v[lid] + v[lid+16];
  __syncthreads();
  if(lid<32) v[lid] = v[lid] + v[lid+8];
  __syncthreads();
  if(lid<32) v[lid] = v[lid] + v[lid+4];
  __syncthreads();
  if(lid<32) v[lid] = v[lid] + v[lid+2];
  __syncthreads();
  if(lid<32) v[lid] = v[lid] + v[lid+1];
  __syncthreads();
}

__global__
void scalarProductKernel_intrinsics(
    half2 const *__restrict__ const a,
    half2 const *__restrict__ const b,
    float *__restrict__ const results,
    size_t const size)
{
  const int stride = gridDim.x*blockDim.x;
  __shared__ half2 shArray[NUM_OF_THREADS];

  half2 value = __float2half2_rn(0.f);

  for (int i = threadIdx.x + blockDim.x * blockIdx.x; i < size; i+=stride)
  {
    value = __hfma2(a[i], b[i], value);
  }

  shArray[threadIdx.x] = value;
  __syncthreads();
  reduceInShared_intrinsics(shArray);

  if (threadIdx.x == 0)
  {
    half2 result = shArray[0];
    float f_result = __low2float(result) + __high2float(result);
    results[blockIdx.x] = f_result;
  }
}

__global__
void scalarProductKernel_native(
    half2 const *__restrict__ const a,
    half2 const *__restrict__ const b,
    float *__restrict__ const results,
    size_t const size)
{
  const int stride = gridDim.x*blockDim.x;
  __shared__ half2 shArray[NUM_OF_THREADS];

  half2 value(0.f, 0.f);
  shArray[threadIdx.x] = value;

  for (int i = threadIdx.x + blockDim.x * blockIdx.x; i < size; i+=stride)
  {
    value += a[i] * b[i];
  }

  shArray[threadIdx.x] = value;
  __syncthreads();
  reduceInShared_native(shArray);

  if (threadIdx.x == 0)
  {
    half2 result = shArray[0];
    float f_result = (float)result.y + (float)result.x;
    results[blockIdx.x] = f_result;
  }
}

void generateInput(half2 * a, size_t size)
{
  for (size_t i = 0; i < size; ++i)
  {
    half2 temp;
    temp.x = static_cast<float>(rand() % 4);
    temp.y = static_cast<float>(rand() % 2);
    a[i] = temp;
  }
}

int main(int argc, char *argv[])
{
  if (argc != 2) {
    printf("Usage: %s <repeat>\n", argv[0]);
    return 1;
  }
  const int repeat = atoi(argv[1]);

  const size_t size = NUM_OF_BLOCKS*NUM_OF_THREADS*16;
  const size_t size_bytes = size * sizeof(half2);
  const size_t result_bytes = NUM_OF_BLOCKS*sizeof(float);

  half2 *a, *b;
  half2 *d_a, *d_b;

  float *r;  // result
  float *d_r;

  a = (half2*) malloc (size_bytes);
  b = (half2*) malloc (size_bytes);
  cudaMalloc((void**)&d_a, size_bytes);
  cudaMalloc((void**)&d_b, size_bytes);

  r = (float*) malloc (result_bytes);
  cudaMalloc((void**)&d_r, result_bytes);

  srand(123); 
  generateInput(a, size);
  cudaMemcpy(d_a, a, size_bytes, cudaMemcpyHostToDevice);

  generateInput(b, size);
  cudaMemcpy(d_b, b, size_bytes, cudaMemcpyHostToDevice);

  // warmup
  for (int i = 0; i < repeat; i++)
    scalarProductKernel_intrinsics<<<NUM_OF_BLOCKS, NUM_OF_THREADS>>>(d_a, d_b, d_r, size);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int i = 0; i < repeat; i++)
    scalarProductKernel_intrinsics<<<NUM_OF_BLOCKS, NUM_OF_THREADS>>>(d_a, d_b, d_r, size);

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average kernel execution time %f (us)\n", (time * 1e-3f) / repeat);

  cudaMemcpy(r, d_r, result_bytes, cudaMemcpyDeviceToHost);

  float result_intrinsics = 0;
  for (int i = 0; i < NUM_OF_BLOCKS; ++i)
  {
    result_intrinsics += r[i];
  }
  printf("Result intrinsics\t: %f \n", result_intrinsics);

  // warmup
  for (int i = 0; i < repeat; i++)
    scalarProductKernel_native<<<NUM_OF_BLOCKS, NUM_OF_THREADS>>>(d_a, d_b, d_r, size);

  cudaDeviceSynchronize();
  start = std::chrono::steady_clock::now();

  for (int i = 0; i < repeat; i++)
    scalarProductKernel_native<<<NUM_OF_BLOCKS, NUM_OF_THREADS>>>(d_a, d_b, d_r, size);

  cudaDeviceSynchronize();
  end = std::chrono::steady_clock::now();
  time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average kernel execution time %f (us)\n", (time * 1e-3f) / repeat);

  cudaMemcpy(r, d_r, result_bytes, cudaMemcpyDeviceToHost);

  float result_native = 0;
  for (int i = 0; i < NUM_OF_BLOCKS; ++i)
  {
    result_native += r[i];
  }
  printf("Result native operators\t: %f \n", result_native);

  printf("fp16ScalarProduct %s\n", (fabs(result_intrinsics - result_native) < 0.00001) ? 
         "PASS" : "FAIL");

  cudaFree(d_a);
  cudaFree(d_b);
  cudaFree(d_r);
  free(a);
  free(b);
  free(r);

  return EXIT_SUCCESS;
}
