#include <cstdio>
#include <chrono>
#include <utility>  // std::pair
#include <cuda.h>
#include <curand_kernel.h>

// philox generates 128 bits of randomness at a time. 
// Kernel uses this explicitly by putting suitably transformed result into float4
// for all members of float4 to be consumed UNROLL has to be 4. Don't change!
const int UNROLL = 4;

template <typename scalar_t,
          typename accscalar_t,
          typename IndexType>
__global__ void
fused_dropout_kernel(
  const scalar_t *__restrict__ a,
        scalar_t *__restrict__ b,
         uint8_t *__restrict__ c,
  IndexType totalElements,
  accscalar_t p,
  std::pair<uint64_t, uint64_t> seeds) 
{
  accscalar_t pinv = accscalar_t(1)/p;
  IndexType idx = blockIdx.x * blockDim.x + threadIdx.x;

  curandStatePhilox4_32_10_t state;
  curand_init(seeds.first, idx, seeds.second, &state);

  IndexType rounded_size = ((totalElements - 1)/(blockDim.x * gridDim.x * UNROLL)+1) *
                           blockDim.x * gridDim.x * UNROLL;

  for (IndexType linearIndex = idx;
       linearIndex < rounded_size;
       linearIndex += gridDim.x * blockDim.x * UNROLL) {

    float4 rand = curand_uniform4(&state);
    scalar_t src[UNROLL];
    rand.x = rand.x < p;
    rand.y = rand.y < p;
    rand.z = rand.z < p;
    rand.w = rand.w < p;
    for (int ii = 0; ii < UNROLL; ii++) {
      IndexType li = linearIndex + blockDim.x * gridDim.x * ii;
      if (li < totalElements) {
        const IndexType aOffset = li;
        src[ii] = a[aOffset];
      }
    }

    for (int ii = 0; ii < UNROLL; ii++) {
      IndexType li = linearIndex + blockDim.x * gridDim.x * ii;
      if (li < totalElements) {
        const IndexType bOffset = li;
        b[bOffset] = src[ii]*(&rand.x)[ii]*pinv;
        c[bOffset] = (uint8_t)(&rand.x)[ii];
      }
    }
    __syncthreads();
  }
}

int main(int argc, char* argv[]) {
  if (argc != 3) {
    printf("Usage: %s <number of elements> <repeat>\n", argv[0]);
    return 1;
  }

  const int64_t nelem = atol(argv[1]);
  const int repeat = atoi(argv[2]);

  const int64_t block_size = 256;

  dim3 dim_block(block_size);
  dim3 grid(256);

  std::pair<uint64_t, uint64_t> rng_engine_inputs;
  rng_engine_inputs.first =  12345678;
  rng_engine_inputs.second = 87654321;

  int64_t self_size = nelem * sizeof(float);
  int64_t ret_size = self_size;
  int64_t mask_size = nelem * sizeof(uint8_t);

  float *self_info = (float*) malloc (self_size); 
  float *ret_info = (float*) malloc (ret_size); 
  uint8_t *mask_info = (uint8_t*) malloc (mask_size);

  for (int64_t i = 0; i < nelem; i++) {
    self_info[i] = 0.1f;
  }

  float *d_self_info;
  cudaMalloc((void**)&d_self_info, self_size); 
  cudaMemcpy(d_self_info, self_info, self_size, cudaMemcpyHostToDevice);

  float *d_ret_info;
  cudaMalloc((void**)&d_ret_info, ret_size); 

  uint8_t *d_mask_info;
  cudaMalloc((void**)&d_mask_info, mask_size);

  double total_time = 0.0;

  for (int p = 1; p <= repeat; p++) {
    float pa = (float)p / repeat;

    cudaDeviceSynchronize();
    auto start = std::chrono::steady_clock::now();

    fused_dropout_kernel<float, float, unsigned int>
      <<<grid, dim_block>>>(d_self_info, d_ret_info, d_mask_info, 
                            nelem, pa, rng_engine_inputs);

    cudaDeviceSynchronize();
    auto end = std::chrono::steady_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    total_time += time;
 
#ifdef DEBUG
    cudaMemcpy(ret_info, d_ret_info, ret_size, cudaMemcpyDeviceToHost);
    cudaMemcpy(mask_info, d_mask_info, mask_size, cudaMemcpyDeviceToHost);

    double ret_sum = 0.0;
    int64_t mask_sum = 0;
    for (int64_t i = 0; i < nelem; i++) {
      ret_sum += ret_info[i];
      mask_sum += mask_info[i];
    }
    printf("p=%2d ret_sum=%lf mask_sum=%ld\n", p, ret_sum, mask_sum);
#endif
  }

  printf("Total kernel execution time %lf (s)\n", total_time * 1e-9f);

  cudaFree(d_self_info); 
  cudaFree(d_ret_info); 
  cudaFree(d_mask_info); 
  free(self_info); 
  free(ret_info); 
  free(mask_info); 

  return 0;
}
