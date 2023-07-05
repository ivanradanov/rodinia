#include <chrono>
#include <iostream>
#include <cstdlib>
#include <cuda.h>
#include "kernels.h"

// thread block size
#define BLOCK_SIZE 256

template <typename T>
inline void memcpyH2D(T *d, const T *h, const int n) {
  cudaMemcpy(d, h, n * sizeof(T), cudaMemcpyHostToDevice);
}

template <typename T>
void test (const int repeat, const int numFloats) 
{
  // Initialize host data, with the first half the same as the second
  T *hostMem = (T*) malloc (sizeof(T) * numFloats);

  srand48(123);
  for (int j = 0; j < numFloats/2 ; ++j)
    hostMem[j] = hostMem[numFloats-j-1] = (T)(drand48()*10.0);

  T *deviceMem;
  cudaMalloc((void**)&deviceMem, numFloats * sizeof(T));

  dim3 threads(BLOCK_SIZE);
  dim3 blocks((numFloats)/BLOCK_SIZE);

  // warmup
  for (int i = 0; i < 4; i++) {
    Add1<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
    Add2<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
    Add4<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
    Add8<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
    cudaDeviceSynchronize();
  }

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,0);
  Add1<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
  cudaDeviceSynchronize();
  auto k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,0);
  printf("kernel execution time (Add1): %f (s)\n", (k_time * 1e-9f));

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,1);
  Add2<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,1);
  printf("kernel execution time (Add2): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,2);
  Add4<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,2);
  printf("kernel execution time (Add4): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,3);
  Add8<T><<< blocks, threads >>>(deviceMem, repeat, 10.0);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,3);
  printf("kernel execution time (Add8): %f (s)\n", k_time * 1e-9f);

  // warmup
  for (int i = 0; i < 4; i++) {
    Mul1<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
    Mul2<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
    Mul4<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
    Mul8<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
    cudaDeviceSynchronize();
  }

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,4);
  Mul1<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,4);
  printf("kernel execution time (Mul1): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,5);
  Mul2<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,5);
  printf("kernel execution time (Mul2): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,6);
  Mul4<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,6);
  printf("kernel execution time (Mul4): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,7);
  Mul8<T><<< blocks, threads >>>(deviceMem, repeat, 1.01);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,7);
  printf("kernel execution time (Mul8): %f (s)\n", k_time * 1e-9f);

  // warmup
  for (int i = 0; i < 4; i++) {
    MAdd1<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
    MAdd2<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
    MAdd4<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
    MAdd8<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
    cudaDeviceSynchronize();
  }

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,8);
  MAdd1<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,8);
  printf("kernel execution time (MAdd1): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,9);
  MAdd2<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,9);
  printf("kernel execution time (MAdd2): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
MY_START_CLOCK(maxFlops-cuda main.cu,10);
  MAdd4<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
MY_STOP_CLOCK(maxFlops-cuda main.cu,10);
  printf("kernel execution time (MAdd4): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
  k_start = std::chrono::high_resolution_clock::now(); 
  MAdd8<T><<< blocks, threads >>>(deviceMem, repeat, 10.0, 0.9899);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
  k_time = std::chrono::duration_cast<std::chrono::nanoseconds>(k_end - k_start).count();
  printf("kernel execution time (MAdd8): %f (s)\n", k_time * 1e-9f);

  // warmup
  for (int i = 0; i < 4; i++) {
    MulMAdd1<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
    MulMAdd2<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
    MulMAdd4<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
    MulMAdd8<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
    cudaDeviceSynchronize();
  }

  memcpyH2D(deviceMem, hostMem, numFloats);
  k_start = std::chrono::high_resolution_clock::now(); 
  MulMAdd1<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
  k_time = std::chrono::duration_cast<std::chrono::nanoseconds>(k_end - k_start).count();
  printf("kernel execution time (MulMAdd1): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
  k_start = std::chrono::high_resolution_clock::now(); 
  MulMAdd2<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
  k_time = std::chrono::duration_cast<std::chrono::nanoseconds>(k_end - k_start).count();
  printf("kernel execution time (MulMAdd2): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
  k_start = std::chrono::high_resolution_clock::now(); 
  MulMAdd4<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
  k_time = std::chrono::duration_cast<std::chrono::nanoseconds>(k_end - k_start).count();
  printf("kernel execution time (MulMAdd4): %f (s)\n", k_time * 1e-9f);

  memcpyH2D(deviceMem, hostMem, numFloats);
  k_start = std::chrono::high_resolution_clock::now(); 
  MulMAdd8<T><<< blocks, threads >>>(deviceMem, repeat, 3.75, 0.355);
  cudaDeviceSynchronize();
  k_end = std::chrono::high_resolution_clock::now(); 
  k_time = std::chrono::duration_cast<std::chrono::nanoseconds>(k_end - k_start).count();
  printf("kernel execution time (MulMAdd8): %f (s)\n", k_time * 1e-9f);

  cudaFree(deviceMem);
  free(hostMem);
}

int main(int argc, char* argv[]) 
{
  if (argc != 2) {
    printf("Usage: %s <repeat>\n", argv[0]);
    return 1;
  }
  // the number of loop iterations inside kernels
  const int repeat = atoi(argv[1]);

  // a multiple of BLOCK_SIZE
  const int numFloats = 2*1024*1024;

  printf("=== Single-precision floating-point kernels ===\n");
  test<float>(repeat, numFloats);

  // comment out when double-precision is not supported by a device
  printf("=== Double-precision floating-point kernels ===\n");
  test<double>(repeat, numFloats);

  return 0;
}
