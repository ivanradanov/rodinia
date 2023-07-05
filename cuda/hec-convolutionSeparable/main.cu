/*
 * Copyright 1993-2010 NVIDIA Corporation.  All rights reserved.
 *
 * Please refer to the NVIDIA end user license agreement (EULA) associated
 * with this source code for terms and conditions that govern your use of
 * this software. Any use, reproduction, disclosure, or distribution of
 * this software and related documentation outside the terms of the EULA
 * is strictly prohibited.
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <chrono>
#include <cuda.h>
#include "conv.h"

int main(int argc, char **argv)
{
  if (argc != 4) {
    printf("Usage: %s <image width> <image height> <repeat>\n", argv[0]); 
    return 1;
  }
  const unsigned int imageW = atoi(argv[1]);
  const unsigned int imageH = atoi(argv[2]);
  const int numIterations = atoi(argv[3]);

  float* h_Kernel    = (float*)malloc(KERNEL_LENGTH * sizeof(float));
  float* h_Input     = (float*)malloc(imageW * imageH * sizeof(float));
  float* h_Buffer    = (float*)malloc(imageW * imageH * sizeof(float));
  float* h_OutputCPU = (float*)malloc(imageW * imageH * sizeof(float));
  float* h_OutputGPU = (float*)malloc(imageW * imageH * sizeof(float));

  srand(2009);
  for(unsigned int i = 0; i < KERNEL_LENGTH; i++)
    h_Kernel[i] = (float)(rand() % 16);

  for(unsigned int i = 0; i < imageW * imageH; i++)
    h_Input[i] = (float)(rand() % 16);

  float* d_Kernel;
  cudaMalloc((void**)&d_Kernel, sizeof(float)*KERNEL_LENGTH);
  cudaMemcpy(d_Kernel, h_Kernel, sizeof(float)*KERNEL_LENGTH, cudaMemcpyHostToDevice);

  float* d_Input;
  cudaMalloc((void**)&d_Input, sizeof(float)*imageW*imageH);
  cudaMemcpy(d_Input, h_Input, sizeof(float)*imageW*imageH, cudaMemcpyHostToDevice);

  float* d_Buffer;
  cudaMalloc((void**)&d_Buffer, sizeof(float)*imageW*imageH);

  float* d_Output;
  cudaMalloc((void**)&d_Output, sizeof(float)*imageW*imageH);

  //Just a single run or a warmup iteration
  convolutionRows(
      d_Buffer,
      d_Input,
      d_Kernel,
      imageW,
      imageH,
      imageW);

  convolutionColumns(
      d_Output,
      d_Buffer,
      d_Kernel,
      imageW,
      imageH,
      imageW);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for(int iter = 0; iter < numIterations; iter++) {
    convolutionRows(
        d_Buffer,
        d_Input,
        d_Kernel,
        imageW,
        imageH,
        imageW);

    convolutionColumns(
        d_Output,
        d_Buffer,
        d_Kernel,
        imageW,
        imageH,
        imageW);
  }

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average kernel execution time %f (s)\n", (time * 1e-9f) / numIterations);

  cudaMemcpy(h_OutputGPU, d_Output, sizeof(float)*imageW * imageH, cudaMemcpyDeviceToHost);

  printf("Comparing against Host/C++ computation...\n"); 
  convolutionRowHost(h_Buffer, h_Input, h_Kernel, imageW, imageH, KERNEL_RADIUS);
  convolutionColumnHost(h_OutputCPU, h_Buffer, h_Kernel, imageW, imageH, KERNEL_RADIUS);
  double sum = 0, delta = 0;
  double L2norm;
  for(unsigned int i = 0; i < imageW * imageH; i++){
    delta += (h_OutputCPU[i] - h_OutputGPU[i]) * (h_OutputCPU[i] - h_OutputGPU[i]);
    sum += h_OutputCPU[i] * h_OutputCPU[i];
  }
  L2norm = sqrt(delta / sum);
  printf("Relative L2 norm: %.3e\n\n", L2norm);

  free(h_OutputGPU);
  free(h_OutputCPU);
  free(h_Buffer);
  free(h_Input);
  free(h_Kernel);
  cudaFree(d_Kernel);
  cudaFree(d_Input);
  cudaFree(d_Buffer);
  cudaFree(d_Output);

  printf("%s\n", L2norm < 1e-6 ? "PASS" : "FAIL");
  return 0;
}
