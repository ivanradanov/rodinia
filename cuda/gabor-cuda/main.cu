#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <cuda.h>
#include "reference.h"

__global__
void gabor (
  double *gabor_spatial,
  const unsigned int height,
  const unsigned int width,
  const double center_y,
  const double center_x,
  const double ctheta,
  const double stheta,
  const double scale,
  const double sx_2,
  const double sy_2,
  const double fx)
{
  int x = blockIdx.x * blockDim.x + threadIdx.x;
  int y = blockIdx.y * blockDim.y + threadIdx.y;

  double centered_x, centered_y, u, v;

  if (x < width && y < height) {
    centered_y = (double)y - center_y;
    centered_x = (double)x - center_x;
    u = ctheta * centered_x - stheta * centered_y;
    v = ctheta * centered_y + stheta * centered_x;
    gabor_spatial[y*width + x] = scale * exp(-0.5*(u*u/sx_2 + v*v/sy_2)) * cos(2.0*M_PI*fx*u);
  }
}

double* generateGaborKernelDevice(
  const int repeat,
  const unsigned int height,
  const unsigned int width,
  const unsigned int par_T,
  const double par_L,
  const double theta)
{
  const double sx = (double)par_T / (2.0*sqrt(2.0*log(2.0)));
  const double sy = par_L * sx;
  const double sx_2 = sx*sx;
  const double sy_2 = sy*sy;
  const double fx = 1.0 / (double)par_T;
  const double ctheta = cos(theta);
  const double stheta = sin(theta);
  const double center_y = (double)height / 2.0;
  const double center_x = (double)width / 2.0;
  const double scale = 1.0/(2.0*M_PI*sx*sy);

  size_t image_size_bytes = height * width * sizeof(double);
  double *h_gabor_spatial = (double*) malloc (image_size_bytes);

  double *d_gabor_spatial;
  cudaMalloc((void**)&d_gabor_spatial, image_size_bytes);

  dim3 grids ((width+15)/16, (height+15)/16);
  dim3 blocks (16, 16);

  cudaDeviceSynchronize();
MY_START_CLOCK(gabor-cuda main.cu,0);

  for (int i = 0; i < repeat; i++) {
    gabor<<<grids, blocks>>>(d_gabor_spatial,
                             height,
                             width, 
                             center_y,
                             center_x,
                             ctheta,
                             stheta,
                             scale,
                             sx_2,
                             sy_2,
                             fx);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
MY_STOP_CLOCK(gabor-cuda main.cu,0);
  printf("Average kernel execution time: %f (us)\n", (time * 1e-3f) / repeat);

  cudaMemcpy(h_gabor_spatial, d_gabor_spatial, image_size_bytes, cudaMemcpyDeviceToHost);
  cudaFree(d_gabor_spatial);
  return h_gabor_spatial;
}

int main(int argc, char* argv[]) {
  if (argc != 4) {
    printf("Usage: %s <height> <width> <repeat>\n", argv[0]);
    return 1;
  }

  const int height = atoi(argv[1]);
  const int width = atoi(argv[2]);
  const int repeat = atoi(argv[3]);

  const unsigned int par_T = 13;
  const double par_L = 2.65;
  const double theta = 45;

  double *h_filter = generateGaborKernelHost(height, width, par_T, par_L, theta);
  double *d_filter = generateGaborKernelDevice(repeat, height, width, par_T, par_L, theta);
  
  bool ok = true;
  for (int i = 0; i < width * height; i++) {
    if (fabs(h_filter[i] - d_filter[i]) > 1e-3) {
      ok = false;
      break;
    }
  }
  printf("%s\n", ok ? "PASS" : "FAIL");
  free(h_filter);
  free(d_filter);
}
