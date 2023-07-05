#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <chrono>
#include <assert.h>
#include <cuda.h>

static void CheckError( cudaError_t err, const char *file, int line ) {
  if (err != cudaSuccess) {
    printf( "%s in %s at line %d\n", cudaGetErrorString( err ), file, line );
  }
}
#define CHECK_ERROR( err ) (CheckError( err, __FILE__, __LINE__ ))

#define BLOCK_SIZE 256

// measure cost of additions without atomics
template <typename T>
__global__ void woAtomicOnGlobalMem(T* result, int size, int n)
{
  unsigned int tid = blockIdx.x * blockDim.x + threadIdx.x;
  for ( unsigned int i = tid * size; i < (tid + 1) * size; i++){
    result[tid] += i % 2;
  }
}

// measure cost of additions with atomics
template <typename T>
__global__ void wiAtomicOnGlobalMem(T* result, int size, int n)
{
  unsigned int tid = blockIdx.x * blockDim.x + threadIdx.x;
  atomicAdd(&result[tid/size], tid % 2);
}

template <typename T>
void atomicCost (int t, int repeat)
{
  for (int size = 1; size <= 16; size++) {

    printf("\n\n");
    printf("Each thread sums up %d elements\n", size);

    assert(t % size == 0);
    assert(t / size % BLOCK_SIZE == 0);

    size_t result_size = sizeof(T) * t / size;

    T* result_wi = (T*) malloc (result_size);
    T* result_wo = (T*) malloc (result_size);

    T* d_result;
    CHECK_ERROR( cudaMalloc((void **)&d_result, result_size) );
    
    dim3 block (BLOCK_SIZE);

    dim3 grid_wo (t / size / BLOCK_SIZE);
    dim3 grid_wi (t / BLOCK_SIZE);

    CHECK_ERROR( cudaDeviceSynchronize() );
    auto start = std::chrono::steady_clock::now();
    for(int i=0; i<repeat; i++)
    {
      CHECK_ERROR( cudaMemset(d_result, 0, result_size) );
      wiAtomicOnGlobalMem<T><<<grid_wi, block>>>(d_result, size, t);
    }
    CHECK_ERROR( cudaDeviceSynchronize() );
    auto end = std::chrono::steady_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    printf("Average execution time of WithAtomicOnGlobalMem: %f (us)\n",
            time * 1e-3f / repeat);
    CHECK_ERROR( cudaMemcpy(result_wi, d_result, result_size, cudaMemcpyDeviceToHost) );

    start = std::chrono::steady_clock::now();
    for(int i=0; i<repeat; i++)
    {
      CHECK_ERROR( cudaMemset(d_result, 0, result_size) );
      woAtomicOnGlobalMem<T><<<grid_wo, block>>>(d_result, size, t/size);
    }
    CHECK_ERROR( cudaDeviceSynchronize() );
    end = std::chrono::steady_clock::now();
    time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    printf("Average execution time of WithoutAtomicOnGlobalMem: %f (us)\n",
            time * 1e-3f / repeat);
    CHECK_ERROR( cudaMemcpy(result_wo, d_result, result_size, cudaMemcpyDeviceToHost) );

    int diff = memcmp(result_wi, result_wo, result_size);
    printf("%s\n", diff ? "FAIL" : "PASS"); 

    free(result_wi);
    free(result_wo);
    cudaFree(d_result);
  }
}

int main(int argc, char* argv[])
{
  if (argc != 2) {
    printf("Usage: %s <repeat>\n", argv[0]);
    return 1;
  }
  const int repeat = atoi(argv[1]);

  const int t = 922521600;
  assert(t % BLOCK_SIZE == 0);
  
  printf("\nFP64 atomic add\n");
  atomicCost<double>(t, repeat); 

  printf("\nINT32 atomic add\n");
  atomicCost<int>(t, repeat); 

  printf("\nFP32 atomic add\n");
  atomicCost<float>(t, repeat); 

  return 0;
}
