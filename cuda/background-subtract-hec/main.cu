#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <chrono>
#include <random>
#include <cuda.h>

#define BLOCK_SIZE 256

__global__ void findMovingPixels(
  const size_t imgSize,
  const unsigned char *__restrict__ Img,
  const unsigned char *__restrict__ Img1,
  const unsigned char *__restrict__ Img2,
  const unsigned char *__restrict__ Tn,
        unsigned char *__restrict__ Mp) // moving pixel map
{
  size_t i = blockDim.x * blockIdx.x + threadIdx.x;
  if (i >= imgSize) return;
  if ( abs(Img[i] - Img1[i]) > Tn[i] || abs(Img[i] - Img2[i]) > Tn[i] )
    Mp[i] = 255;
  else {
    Mp[i] = 0;
  }
}

// alpha = 0.92 
__global__ void updateBackground(
  const size_t imgSize,
  const unsigned char *__restrict__ Img,
  const unsigned char *__restrict__ Mp,
        unsigned char *__restrict__ Bn)
{
  size_t i = blockDim.x * blockIdx.x + threadIdx.x;
  if (i >= imgSize) return;
  if ( Mp[i] == 0 ) Bn[i] = 0.92f * Bn[i] + 0.08f * Img[i];
}

// alpha = 0.92, c = 3
__global__ void updateThreshold(
  const size_t imgSize,
  const unsigned char *__restrict__ Img,
  const unsigned char *__restrict__ Mp,
  const unsigned char *__restrict__ Bn,
        unsigned char *__restrict__ Tn)
{
  size_t i = blockDim.x * blockIdx.x + threadIdx.x;
  if (i >= imgSize) return;
  if (Mp[i] == 0) {
    float th = 0.92f * Tn[i] + 0.24f * (Img[i] - Bn[i]);
    Tn[i] = fmaxf(th, 20.f);
  }
}

//
// merge three kernels into a single kernel
//
__global__ void merge(
  const size_t imgSize,
  const unsigned char *__restrict__ Img,
  const unsigned char *__restrict__ Img1,
  const unsigned char *__restrict__ Img2,
        unsigned char *__restrict__ Tn,
        unsigned char *__restrict__ Bn)
{
  size_t i = blockDim.x * blockIdx.x + threadIdx.x;
  if (i >= imgSize) return;
  if ( abs(Img[i] - Img1[i]) <= Tn[i] && abs(Img[i] - Img2[i]) <= Tn[i] ) {
    // update background
    Bn[i] = 0.92f * Bn[i] + 0.08f * Img[i];

    // update threshold
    float th = 0.92f * Tn[i] + 0.24f * (Img[i] - Bn[i]);
    Tn[i] = fmaxf(th, 20.f);
  }
}

int main(int argc, char* argv[]) {
  if (argc != 5) {
    printf("Usage: %s <image width> <image height> <merge> <repeat>\n", argv[0]);
    return 1;
  }

  const int width = atoi(argv[1]);
  const int height = atoi(argv[2]);
  const int merged = atoi(argv[3]);
  const int repeat = atoi(argv[4]);

  const int imgSize = width * height;
  const size_t imgSize_bytes = imgSize * sizeof(char);
  unsigned char *Img = (unsigned char*) malloc (imgSize_bytes);
  unsigned char *Bn = (unsigned char*) malloc (imgSize_bytes);
  unsigned char *Tn = (unsigned char*) malloc (imgSize_bytes);

  unsigned char *d_Img, *d_Img1, *d_Img2;
  unsigned char *d_Bn, *d_Mp, *d_Tn;
  cudaMalloc((void**)&d_Img, imgSize_bytes);
  cudaMalloc((void**)&d_Img1, imgSize_bytes);
  cudaMalloc((void**)&d_Img2, imgSize_bytes);
  cudaMalloc((void**)&d_Bn, imgSize_bytes);
  cudaMalloc((void**)&d_Mp, imgSize_bytes);
  cudaMalloc((void**)&d_Tn, imgSize_bytes);

  std::mt19937 generator( 123 );
  std::uniform_int_distribution<int> distribute( 0, 255 );

  for (int j = 0; j < imgSize; j++) {
    Bn[j] = distribute(generator);
    Tn[j] = 128;
  }

  cudaMemcpy(d_Bn, Bn, imgSize_bytes, cudaMemcpyHostToDevice);
  cudaMemcpy(d_Tn, Tn, imgSize_bytes, cudaMemcpyHostToDevice);

  dim3 grids ((imgSize + BLOCK_SIZE - 1) / BLOCK_SIZE);
  dim3 blocks (BLOCK_SIZE);

  long time = 0;

  for (int i = 0; i < repeat; i++) {

    for (int j = 0; j < imgSize; j++) {
      Img[j] = distribute(generator);
    }

    cudaMemcpy(d_Img, Img, imgSize_bytes, cudaMemcpyHostToDevice);

    // Time t   : Image   | Image1   | Image2
    // Time t+1 : Image2  | Image    | Image1
    // Time t+2 : Image1  | Image2   | Image
    unsigned char *t = d_Img2;
    d_Img2 = d_Img1;
    d_Img1 = d_Img;
    d_Img = t;

    if (i >= 2) {
      if (merged) {
        auto start = std::chrono::steady_clock::now();
        merge <<< grids, blocks >>> ( imgSize, d_Img, d_Img1, d_Img2, d_Tn, d_Bn );
        cudaDeviceSynchronize();
        auto end = std::chrono::steady_clock::now();
        time += std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
      }
      else {
        auto start = std::chrono::steady_clock::now();
        findMovingPixels <<< grids, blocks >>> ( imgSize, d_Img, d_Img1, d_Img2, d_Tn, d_Mp );
        updateBackground <<< grids, blocks >>> ( imgSize, d_Img, d_Mp, d_Bn );
        updateThreshold <<< grids, blocks >>> ( imgSize, d_Img, d_Mp, d_Bn, d_Tn );
        cudaDeviceSynchronize();
        auto end = std::chrono::steady_clock::now();
        time += std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
      }
    }
  }

  float kernel_time = (repeat <= 2) ? 0 : (time * 1e-3f) / (repeat - 2);
  printf("Average kernel execution time: %f (us)\n", kernel_time);

  cudaMemcpy(Tn, d_Tn, imgSize_bytes, cudaMemcpyDeviceToHost);

  // verification
  int sum = 0;
  int bin[4] = {0, 0, 0, 0};
  for (int j = 0; j < imgSize; j++) {
    sum += abs(Tn[j] - 128);
    if (Tn[j] < 64)
      bin[0]++;
    else if (Tn[j] < 128)
      bin[1]++;
    else if (Tn[j] < 192)
      bin[2]++;
    else
      bin[3]++;
  }
  sum = sum / imgSize;
  printf("Average threshold change is %d\n", sum);
  printf("Bin counts are %d %d %d %d\n", bin[0], bin[1], bin[2], bin[3]);
     
  free(Img);
  free(Tn);
  free(Bn);
  cudaFree(d_Img);
  cudaFree(d_Img1);
  cudaFree(d_Img2);
  cudaFree(d_Tn);
  cudaFree(d_Mp);
  cudaFree(d_Bn);

  return 0;
}
