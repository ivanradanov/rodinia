/* Copyright (c) 1993-2016, NVIDIA CORPORATION. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *  * Neither the name of NVIDIA CORPORATION nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <chrono>
#include <cuda.h>

// Define some error checking macros.
#define cudaErrCheck(stat) { cudaErrCheck_((stat), __FILE__, __LINE__); }
void cudaErrCheck_(cudaError_t stat, const char *file, int line) {
  if (stat != cudaSuccess) {
    fprintf(stderr, "CUDA Error: %s %s %d\n", cudaGetErrorString(stat), file, line);
  }
}

typedef struct {
  double i, c, h;
} checksum;

// Device functions
__forceinline__ __device__ float sigmoidf(float in) {
  return 1.f / (1.f + expf(-in));  
}

// Fused kernel
__global__ 
void elementWise_fp(int hiddenSize, int miniBatch,
    const float *__restrict__ tmp_h, 
    const float *__restrict__ tmp_i, 
    const float *__restrict__ bias,
    float *__restrict__ linearGates,
    float *__restrict__ h_out,
    float *__restrict__ i_out,
    const float *__restrict__ c_in,
    float *__restrict__ c_out)
{
  int index = blockIdx.x * blockDim.x + threadIdx.x;
  int numElements = miniBatch * hiddenSize;

  if (index >= numElements) return;

  int batch = index / hiddenSize;
  int gateIndex = (index % hiddenSize) + 4 * batch * hiddenSize;   

  float g[4];

  for (int i = 0; i < 4; i++) {
    g[i] = tmp_i[i * hiddenSize + gateIndex] + tmp_h[i * hiddenSize + gateIndex];
    g[i] += bias[i * hiddenSize + index % hiddenSize] + bias[(i + 4) * hiddenSize + index % hiddenSize];
    linearGates[gateIndex + i * hiddenSize] = g[i];
  }   

  float in_gate     = sigmoidf(g[0]);
  float forget_gate = sigmoidf(g[1]);
  float in_gate2    = tanhf(g[2]);
  float out_gate    = sigmoidf(g[3]);

  float val = (forget_gate * c_in[index]) + (in_gate * in_gate2);

  c_out[index] = val;

  val = out_gate * tanhf(val);                                   

  h_out[index] = val;
  i_out[index] = val;
}

__device__
float LCG_random(unsigned int * seed) {
  const unsigned int m = 2147483648;
  const unsigned int a = 26757677;
  const unsigned int c = 1;
  *seed = (a * (*seed) + c) % m;
  return (float) (*seed) / (float) m;
}

__global__
void init (float* data, int size) {
  int index = blockIdx.x * blockDim.x + threadIdx.x;
  if (index >= size) return;
  unsigned int seed = index ^ size;
  data[index] = LCG_random(&seed);
}

void test(int hiddenSize, int miniBatch, int seqLength, int numLayers,
          checksum &cs, double &time) {
  float *h_data;
  float *i_data;
  float *c_data;
  float *bias;
  float *tmp_h;
  float *tmp_i;
  float *linearGates;

  // Input/output data
  int numElements = hiddenSize * miniBatch;

  int hc_size = (seqLength + 1) * (numLayers) * numElements;
  int i_size = (seqLength) * (numLayers + 1) * numElements;
  int bias_size = numLayers * hiddenSize * 8;
  int tmp_h_size = 4 * numLayers * numElements;
  int tmp_i_size = 4 * seqLength * numElements;

  cudaErrCheck(cudaMalloc((void**)&h_data, hc_size * sizeof(float)));
  cudaErrCheck(cudaMalloc((void**)&i_data, i_size * sizeof(float)));
  cudaErrCheck(cudaMalloc((void**)&c_data, hc_size * sizeof(float)));
  cudaErrCheck(cudaMalloc((void**)&bias, bias_size * sizeof(float)));

  // Workspace
  cudaErrCheck(cudaMalloc((void**)&tmp_h, tmp_h_size * sizeof(float)));
  cudaErrCheck(cudaMalloc((void**)&tmp_i, tmp_i_size * sizeof(float)));

  // Activations
  cudaErrCheck(cudaMalloc((void**)&linearGates, 4 * seqLength * numLayers * numElements * sizeof(float)));  

  // Initialise with random values on a device
  dim3 blocks (256);
  dim3 grids_hc ((hc_size + 255)/256);
  dim3 grids_b ((bias_size + 255)/256);
  dim3 grids_tmp_h ((tmp_h_size + 255)/256);
  dim3 grids_tmp_i ((tmp_i_size + 255)/256);
          
  init <<< grids_tmp_h, blocks >>> (tmp_h, tmp_h_size);
  init <<< grids_tmp_i, blocks >>> (tmp_i, tmp_i_size);
  init <<< grids_hc, blocks >>> (c_data, hc_size);
  init <<< grids_b, blocks >>> (bias, bias_size);

  cudaDeviceSynchronize();

  int lStart = 0;
  int lEnd = 0;
  int rStart = 0;
  int rEnd = 0;
  int recurBatchSize = 2;

  dim3 grids_p ((numElements + 255)/256);
  
  double ktime = 0.0;

  while (true) {
    // Many layer "scheduling".
    if (lEnd == 0) {
      lStart = 0;
      lEnd = 1;
      rStart = 0;
    }
    else {
      // Move "up" and "left"
      lStart++;
      lEnd++;

      rStart -= recurBatchSize;

      // Over the top or off the left, reset to layer 0
      if (lEnd > numLayers || rStart < 0) {
        rStart += (lStart + 1) * recurBatchSize;

        lStart = 0;
        lEnd = 1;
      }

      // Off the right, step up
      while (rStart >= seqLength && lEnd <= numLayers) {
        lStart++;
        lEnd++;
        rStart -= recurBatchSize;
      }

      // Over the top or off the left, done!
      if (lEnd > numLayers || rStart < 0) {
        break;
      }
    }

    rEnd = rStart + recurBatchSize;
    if (rEnd > seqLength) rEnd = seqLength;

    auto start = std::chrono::steady_clock::now();

    for (int layer = lStart; layer < lEnd; layer++) {
      for (int i = rStart; i < rEnd; i++)
        elementWise_fp <<< grids_p, blocks >>> 
        (hiddenSize, miniBatch,
         tmp_h + 4 * layer * numElements, 
         tmp_i + 4 * i * numElements, 
         bias + 8 * layer * hiddenSize,
         linearGates + 4 * (i * numElements + layer * seqLength * numElements),
         h_data + (i + 1) * numElements + layer * (seqLength + 1) * numElements,
         i_data + i * numElements + (layer + 1) * seqLength * numElements,
         c_data + i * numElements + layer * (seqLength + 1) * numElements,
         c_data + (i + 1) * numElements + layer * (seqLength + 1) * numElements);
      cudaErrCheck(cudaGetLastError());
    }

    cudaDeviceSynchronize();
    auto end = std::chrono::steady_clock::now();
    ktime += std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  }

  time += ktime;
  //printf("Kernel execution time: %f (s)\n", ktime * 1e-9f);

  float *testOutputi = (float*)malloc(numElements * seqLength * sizeof(float));
  float *testOutputh = (float*)malloc(numElements * numLayers * sizeof(float));
  float *testOutputc = (float*)malloc(numElements * numLayers * sizeof(float));

  cudaDeviceSynchronize();
  
  cudaErrCheck(cudaMemcpy(testOutputi, i_data + numLayers * seqLength * numElements, 
    seqLength * numElements * sizeof(float), cudaMemcpyDeviceToHost));
  for (int layer = 0; layer < numLayers; layer++) {
    cudaErrCheck(cudaMemcpy(testOutputh + layer * numElements, 
      h_data + seqLength * numElements + layer * (seqLength + 1) * numElements, 
      numElements * sizeof(float), cudaMemcpyDeviceToHost));
    cudaErrCheck(cudaMemcpy(testOutputc + layer * numElements, 
      c_data + seqLength * numElements + layer * (seqLength + 1) * numElements, 
      numElements * sizeof(float), cudaMemcpyDeviceToHost));
  }

  double checksumi = 0.0;
  double checksumh = 0.0;
  double checksumc = 0.0;

  for (int m = 0; m < miniBatch; m++) {
    for (int j = 0; j < seqLength; j++) {
      for (int i = 0; i < hiddenSize; i++) {
        checksumi += testOutputi[j * numElements + m * hiddenSize + i];
        //if (hiddenSize <= 8) printf("i: (%d,%d): %E\n", j, i, testOutputi[j * numElements + m * hiddenSize + i]);
      }
    }
    for (int j = 0; j < numLayers; j++) {
      for (int i = 0; i < hiddenSize; i++) {         
        checksumh += testOutputh[j * numElements + m * hiddenSize + i];
        checksumc += testOutputc[j * numElements + m * hiddenSize + i];
      }
    }
  }

  free(testOutputi);
  free(testOutputc);
  free(testOutputh);

  cudaErrCheck(cudaFree(h_data));
  cudaErrCheck(cudaFree(i_data));  
  cudaErrCheck(cudaFree(c_data));  

  cudaErrCheck(cudaFree(bias));
  cudaErrCheck(cudaFree(tmp_h));
  cudaErrCheck(cudaFree(tmp_i));
  cudaErrCheck(cudaFree(linearGates));

  cs.i = checksumi;
  cs.c = checksumc;
  cs.h = checksumh;
}

int main(int argc, char* argv[]) {
  int seqLength;
  int numLayers;
  int hiddenSize;
  int miniBatch; 
  int numRuns; 

  if (argc == 6) {
    seqLength = atoi(argv[1]);
    numLayers = atoi(argv[2]);
    hiddenSize = atoi(argv[3]);
    miniBatch = atoi(argv[4]);   
    numRuns = atoi(argv[5]);   
  }
  else if (argc == 1) {
    printf("Running with default settings\n");
    seqLength = 100;
    numLayers = 4;
    hiddenSize = 512;
    miniBatch = 64;
    numRuns = 1;
  }
  else {
    printf("Usage: ./%s <seqLength> <numLayers> <hiddenSize> <miniBatch> <repeat>\n", argv[0]);
    return 1;      
  }

  printf("seqLength %d, numLayers %d, hiddenSize %d, miniBatch %d\n",
         seqLength, numLayers, hiddenSize, miniBatch);  

  checksum cs;
  
  double time = 0.0;

  for (int run = 0; run < numRuns; run++) {
    test(hiddenSize, miniBatch, seqLength, numLayers, cs, time);
  }

  printf("Average kernel execution time: %f (s)\n", (time * 1e-9f) / numRuns);
  printf("i checksum %E     ", cs.i);
  printf("c checksum %E     ", cs.c);
  printf("h checksum %E\n", cs.h);
  return 0;
}
