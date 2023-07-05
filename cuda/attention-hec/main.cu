#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <chrono>
#include <cuda.h>
#include "reference.h"

__global__ 
void kernel1 (
    const float*__restrict__ key, 
    const float*__restrict__ query, 
    float*__restrict__ dot_product, 
    float*__restrict__ exp_sum, 
    const int n,
    const int d) 
{

  int i = blockIdx.x * blockDim.x + threadIdx.x;  
  if (i < n) {
    float sum = 0;
    for (int j = 0; j < d; j++)
      sum += key[i * d + j] * query[j];
    dot_product[i] = sum;
    atomicAdd(exp_sum, expf(sum));
  }
}

__global__ 
void kernel2 (
    const float*__restrict__ exp_sum, 
    const float*__restrict__ dot_product, 
    float*__restrict__ score, 
    const int n)
{

  int i = blockIdx.x * blockDim.x + threadIdx.x;  
  if (i < n)
    score[i] = expf(dot_product[i]) / exp_sum[0];
}

__global__ 
void kernel3 (
    const float*__restrict__ score, 
    const float*__restrict__ value, 
    float*__restrict__ output, 
    const int n,
    const int d) 
{
  int j = blockIdx.x * blockDim.x + threadIdx.x;  
  if (j < d) {
    float sum = 0;
    for (int i = 0; i < n; i++)
      sum += score[i] * value[i * d + j];
    output[j] = sum;
  }
}

float* attention_device(const float* key, const float* value, const float* query,
                        const int n, const int d, const int repeat) 
{
  // input
  float *d_key;
  cudaMalloc((void**)&d_key, n * d * sizeof(float)); 
  cudaMemcpy(d_key, key, n * d * sizeof(float), cudaMemcpyHostToDevice); 

  float *d_value;
  cudaMalloc((void**)&d_value, n * d * sizeof(float)); 
  cudaMemcpy(d_value, value, n * d * sizeof(float), cudaMemcpyHostToDevice); 

  float *d_query;
  cudaMalloc((void**)&d_query, d * sizeof(float)); 
  cudaMemcpy(d_query, query, d * sizeof(float), cudaMemcpyHostToDevice); 

  // intermediate
  float *d_dot_product;
  cudaMalloc((void**)&d_dot_product, n * sizeof(float));

  float *d_score;
  cudaMalloc((void**)&d_score, n * sizeof(float));

  float *d_exp_sum;
  cudaMalloc((void**)&d_exp_sum, sizeof(float));

  // result
  float *output = (float*) malloc (d * sizeof(float));
  float *d_output;
  cudaMalloc((void**)&d_output, d * sizeof(float));

  dim3 n_grid((n+255)/256);
  dim3 n_block(256);
  dim3 d_grid((d+255)/256);
  dim3 d_block(256);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int k = 0; k < repeat; k++) {
    cudaMemset(d_exp_sum, 0, 4);

    kernel1<<<n_grid, n_block>>>(d_key, d_query, d_dot_product, d_exp_sum, n, d);

    kernel2<<<n_grid, n_block>>>(d_exp_sum, d_dot_product, d_score, n);

    kernel3<<<d_grid, d_block>>>(d_score, d_value, d_output, n, d);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average execution time of kernels %f (ms)\n", time * 1e-6f / repeat);

  cudaMemcpy(output, d_output, d * sizeof(float), cudaMemcpyDeviceToHost);
  cudaFree(d_score);
  cudaFree(d_value);
  cudaFree(d_output);
  cudaFree(d_key);
  cudaFree(d_dot_product);
  cudaFree(d_exp_sum);
  return output;
}

int main(int argc, char* argv[]) {
  if (argc != 4) {
    printf("Usage: %s <rows> <columns> <repeat>\n", argv[0]);
    return 1;
  }
  const int n = atoi(argv[1]);
  const int d = atoi(argv[2]);
  const int r = atoi(argv[3]);

  // input
  float* key = (float*) malloc (n * d * sizeof(float));
  float* value = (float*) malloc (n * d * sizeof(float));
  float* query = (float*) malloc (d * sizeof(float));

  srand(2);
  for (int i = 0; i < n * d; i++) {
    key[i] = 0.1;
    value[i] = 0.3;
    if (rand() % 2)
      query[i % d] = value[i] + key[i] ;
    else
      query[i % d] = value[i] - key[i] ;
  }

  float* hout = attention_host(key, value, query, n, d);

  float* dout = attention_device(key, value, query, n, d, r);

  float rmse = 0;
  for (int i = 0; i < d; i++) 
    rmse += (hout[i] - dout[i]) * (hout[i] - dout[i]);
  printf("RMSE = %f\n", sqrtf(rmse / d));

  free(key);
  free(value);
  free(query);
  free(dout);
  free(hout);
  return 0;
}
