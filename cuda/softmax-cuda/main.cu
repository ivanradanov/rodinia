#include <chrono>
#include <cstdlib>
#include <cstdio>
#include <cuda.h>

#define BLOCK_SIZE 256

// A C model derived from the OpenCL kernel 
void softMax_cpu(const int numSlice, const int sliceSize, const float* src, float* dest) {
  for (int i = 0; i < numSlice; i++) {
    float max_ = src[i * sliceSize];
    for (int j = 0; j < sliceSize; j++) {
      max_ = (max_ < src[i * sliceSize + j]) ? src[i * sliceSize + j] : max_;
    }
    float sum = 0;
    for (int j = 0; j < sliceSize; j++) {
      float e = expf(src[i * sliceSize + j] - max_);
      sum += e;
      dest[i * sliceSize + j] = e;
    }
    for (int j = 0; j < sliceSize; j++) {
      dest[i * sliceSize + j] /= sum;
    }
  }
}

__global__
void softMax (const int numSlice, const int sliceSize,
              const float* src, float* dest)
{
  unsigned i = blockIdx.x * blockDim.x + threadIdx.x;
  if (i >= numSlice) return;
  float max_ = src[i * sliceSize];
  for (int j = 0; j < sliceSize; j++) {
    max_ = max(max_, src[i * sliceSize + j]);
  }
  float sum = 0;
  for (int j = 0; j < sliceSize; j++) {
    sum += expf(src[i * sliceSize + j] - max_);
  }
  for (int j = 0; j < sliceSize; j++) {
    dest[i * sliceSize + j] = expf(src[i * sliceSize + j] - max_) / sum;
  }
}

int main(int argc, char* argv[]) {
  if (argc != 4) {
    printf("Usage: %s <number of slices> <slice size> <repeat>\n", argv[0]);
    return 1;
  }
   
  int numSlice = atoi(argv[1]);
  int sliceSize = atoi(argv[2]);
  int repeat = atoi(argv[3]);
  int numElem = numSlice * sliceSize;

  float* input = (float*) aligned_alloc(1024, sizeof(float) * numElem);
  float* output_gpu = (float*) aligned_alloc(1024, sizeof(float) * numElem);
  float* output_cpu = (float*) aligned_alloc(1024, sizeof(float) * numElem);

  srand(2);
  for (int i = 0; i < numSlice; i++)
    for (int j = 0; j < sliceSize; j++)
      input[i*sliceSize+j] = rand() % 13; 

  float *d_input, *d_output;
  cudaMalloc((void**)&d_input, sizeof(float) * numElem);
  cudaMalloc((void**)&d_output, sizeof(float) * numElem);
  cudaMemcpy(d_input, input, sizeof(float) * numElem, cudaMemcpyHostToDevice);

  dim3 global_work_size ((numSlice+BLOCK_SIZE-1)/BLOCK_SIZE*BLOCK_SIZE);
  dim3 local_work_size (BLOCK_SIZE);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int n = 0; n < repeat; n++) {
    softMax<<<global_work_size, local_work_size>>>(numSlice, sliceSize, d_input, d_output);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average kernel execution time: %f (s)\n", (time * 1e-9f) / repeat);

  cudaMemcpy(output_gpu, d_output, sizeof(float) * numElem, cudaMemcpyDeviceToHost);

  // verification
  bool ok = true;
  softMax_cpu(numSlice, sliceSize, input, output_cpu);
  for (int i = 0; i < numElem; i++) {
    if (fabsf(output_cpu[i] - output_gpu[i]) > 1e-3) {
      printf("@index %d host: %f device: %f\n", i, output_cpu[i], output_gpu[i]);
      ok = false;
      break;
    }
  }
  printf("%s\n", ok ? "PASS" : "FAIL");

  free(input);
  free(output_cpu);
  free(output_gpu);
  cudaFree(d_input);
  cudaFree(d_output);
  return 0;
}

