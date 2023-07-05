/* Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:
  * Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
  * Neither the name of NVIDIA CORPORATION nor the names of its
    contributors may be used to endorse or promote products derived
    from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
 EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <chrono>
#include <cuda.h>

/* Add two vectors on the GPU */
__global__
void vectorAddGPU(const float *__restrict__ a,
                  const float *__restrict__ b,
                        float *__restrict__ c,
                  int N) 
{
  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx < N) {
    c[idx] = a[idx] + b[idx];
  }
}

void eval_direct_copy (bool warmup, const int repeat) {

  for (int nelem = 1024; nelem <= (1024*1024*64); nelem = nelem*4) {

    if (!warmup) printf("direct copy: vector length = %d | ", nelem);

    size_t bytes = nelem * sizeof(float);

    bool ok = true;

    auto start = std::chrono::steady_clock::now();

    for (int r = 0; r < repeat; r++) {

      float *a, *b, *c;
      a = (float*) malloc (bytes);
      b = (float*) malloc (bytes);
      c = (float*) malloc (bytes);

      for (int i = 0; i < nelem; i++) {
        a[i] = b[i] = 1.f;
      }

      // Call the GPU kernel using the pointers residing in CPU mapped memory
      dim3 block(256);
      dim3 grid((unsigned int)ceil(nelem / (float)block.x));

      // Get the device pointers for the pinned CPU memory mapped into the GPU
      // memory space
      float *d_a, *d_b, *d_c;
      cudaMalloc((void **)&d_a, bytes);
      cudaMalloc((void **)&d_b, bytes);
      cudaMalloc((void **)&d_c, bytes);

      cudaMemcpy(d_a, a, bytes, cudaMemcpyHostToDevice);
      cudaMemcpy(d_b, b, bytes, cudaMemcpyHostToDevice);

      vectorAddGPU<<<grid, block>>>(d_a, d_b, d_c, nelem);

      cudaMemcpy(c, d_c, bytes, cudaMemcpyDeviceToHost);

      for (int i = 0; i < nelem; i++) {
        if (c[i] != 2.f) {
          ok = false;
          break;
        }
      }

      // Memory clean up
      cudaFree(d_a);
      cudaFree(d_b);
      cudaFree(d_c);
      free(a);
      free(b);
      free(c);
    }

    auto end = std::chrono::steady_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    if (!warmup) {
      printf("Total time: %lf ms | ", time * 1e-6 / repeat);
      printf("%s\n", ok ? "PASS" : "FAIL");
    }
  }
}

void eval_zero_copy (bool warmup, const int repeat) {
  // Allocate mapped CPU memory
  cudaSetDeviceFlags(cudaDeviceMapHost);

  for (int nelem = 1024; nelem <= (1024*1024*64); nelem = nelem*4) {

    if (!warmup) printf("zero copy: vector length = %d | ", nelem);

    size_t bytes = nelem * sizeof(float);

    bool ok = true;

    auto start = std::chrono::steady_clock::now();

    for (int r = 0; r < repeat; r++) {

      unsigned int flags = cudaHostAllocMapped;
      float *a, *b, *c;       // Pinned memory allocated on the CPU
      cudaHostAlloc((void **)&a, bytes, flags);
      cudaHostAlloc((void **)&b, bytes, flags);
      cudaHostAlloc((void **)&c, bytes, flags);

      for (int i = 0; i < nelem; i++) {
        a[i] = b[i] = 1.f;
      }

      // Call the GPU kernel using the pointers residing in CPU mapped memory
      dim3 block(256);
      dim3 grid((unsigned int)ceil(nelem / (float)block.x));

      // Get the device pointers for the pinned CPU memory mapped into the GPU
      // memory space
      float *d_a, *d_b, *d_c;
      cudaHostGetDevicePointer((void **)&d_a, (void *)a, 0);
      cudaHostGetDevicePointer((void **)&d_b, (void *)b, 0);
      cudaHostGetDevicePointer((void **)&d_c, (void *)c, 0);
      vectorAddGPU<<<grid, block>>>(d_a, d_b, d_c, nelem);

      cudaDeviceSynchronize();  // required

      for (int i = 0; i < nelem; i++) {
        if (c[i] != 2.f) {
          ok = false;
          break;
        }
      }

      // Memory clean up
      cudaFreeHost(a);
      cudaFreeHost(b);
      cudaFreeHost(c);
    }

    auto end = std::chrono::steady_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    if (!warmup) {
      printf("Total time: %lf ms | ", time * 1e-6 / repeat);
      printf("%s\n", ok ? "PASS" : "FAIL");
    }
  }
}

void eval_managed_copy (bool warmup, const int repeat) {

  for (int nelem = 1024; nelem <= (1024*1024*64); nelem = nelem*4) {

    if (!warmup) printf("managed copy: vector length = %d | ", nelem);

    size_t bytes = nelem * sizeof(float);

    bool ok = true;

    auto start = std::chrono::steady_clock::now();

    for (int r = 0; r < repeat; r++) {

      dim3 block(256);
      dim3 grid((unsigned int)ceil(nelem / (float)block.x));

      float *d_a, *d_b, *d_c;
      cudaMallocManaged((void **)&d_a, bytes);
      cudaMallocManaged((void **)&d_b, bytes);
      cudaMallocManaged((void **)&d_c, bytes);

      for (int i = 0; i < nelem; i++) {
        d_a[i] = d_b[i] = 1.f;
      }

      vectorAddGPU<<<grid, block>>>(d_a, d_b, d_c, nelem);
      
      cudaDeviceSynchronize();

      for (int i = 0; i < nelem; i++) {
        if (d_c[i] != 2.f) {
          ok = false;
          break;
        }
      }

      // Memory clean up
      cudaFree(d_a);
      cudaFree(d_b);
      cudaFree(d_c);
    }

    auto end = std::chrono::steady_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    if (!warmup) {
      printf("Total time: %lf ms | ", time * 1e-6 / repeat);
      printf("%s\n", ok ? "PASS" : "FAIL");
    }
  }
}

int main(int argc, char **argv) {
  if (argc != 2) {
    printf("Usage: %s <repeat>\n", argv[0]);
    return 1;
  }
  const int repeat = atoi(argv[1]);

  eval_direct_copy(true, repeat); // warmup
  eval_direct_copy(false, repeat); 

  eval_zero_copy(true, repeat); // warmup
  eval_zero_copy(false, repeat); 

  eval_managed_copy(true, repeat); // warmup
  eval_managed_copy(false, repeat); 

  return 0;
}
