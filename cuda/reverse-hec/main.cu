#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <random>
#include <chrono>
#include <cuda.h>

__global__ void reverse (int *d, const int len)
{
  __shared__ int s[256];
  int t = threadIdx.x;
  s[t] = d[t];
  __syncthreads();
  d[t] = s[len-t-1];
}

int main(int argc, char* argv[]) {

  if (argc != 2) {
    printf("Usage: ./%s <iterations>\n", argv[0]);
    return 1;
  }

  // specify the number of test cases
  const int iteration = atoi(argv[1]);

  // number of elements to reverse
  const int len = 256;
  const int elem_size = len * sizeof(int);

  // save device result
  int test[len];

  // save expected results after performing preverse operations even/odd times
  int error = 0;
  int gold_odd[len];
  int gold_even[len];

  for (int i = 0; i < len; i++) {
    gold_odd[i] = len-i-1;
    gold_even[i] = i;
  }

  int *d_test;
  cudaMalloc((void**)&d_test, elem_size);

  std::default_random_engine generator (123);
  // bound the number of reverse operations
  std::uniform_int_distribution<int> distribution(100, 9999);

  long time = 0;

  for (int i = 0; i < iteration; i++) {
    const int count = distribution(generator);

    cudaMemcpy(d_test, gold_even, elem_size, cudaMemcpyHostToDevice);

    cudaDeviceSynchronize();
    auto start = std::chrono::steady_clock::now();

    for (int j = 0; j < count; j++)
      reverse<<<1, len>>> (d_test, len);

    cudaDeviceSynchronize();
    auto end = std::chrono::steady_clock::now();
    time += std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();

    cudaMemcpy(test, d_test, elem_size, cudaMemcpyDeviceToHost);

    if (count % 2 == 0)
      error = memcmp(test, gold_even, elem_size);
    else
      error = memcmp(test, gold_odd, elem_size);
    
    if (error) break;
  }
  
  printf("Total kernel execution time: %f (s)\n", time * 1e-9f);
  printf("%s\n", error ? "FAIL" : "PASS");

  cudaFree(d_test);
  return 0;
}
