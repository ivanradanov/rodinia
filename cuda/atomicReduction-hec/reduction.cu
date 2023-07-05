/*
   Copyright (c) 2015-2016 Advanced Micro Devices, Inc. All rights reserved.

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in
   all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
   THE SOFTWARE.
 */

#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <vector>
#include <chrono>
#include <cfloat>
#include <iomanip>
#include <cmath>
#include <cuda.h>


__global__ void atomic_reduction(int *in, int* out, int arrayLength) {
  int sum=int(0);
  int idx = blockIdx.x*blockDim.x+threadIdx.x;
  for(int i= idx;i<arrayLength;i+=blockDim.x*gridDim.x) {
    sum+=in[i];
  }
  atomicAdd(out,sum);
}

__global__ void atomic_reduction_v2(int *in, int* out, int arrayLength) {
  int sum=int(0);
  int idx = blockIdx.x*blockDim.x+threadIdx.x;
  for(int i= idx*2;i<arrayLength;i+=blockDim.x*gridDim.x*2) {
    sum+=in[i] + in[i+1];
  }
  atomicAdd(out,sum);
}

__global__ void atomic_reduction_v4(int *in, int* out, int arrayLength) {
  int sum=int(0);
  int idx = blockIdx.x*blockDim.x+threadIdx.x;
  for(int i= idx*4;i<arrayLength;i+=blockDim.x*gridDim.x*4) {
    sum+=in[i] + in[i+1] + in[i+2] + in[i+3];
  }
  atomicAdd(out,sum);
}

__global__ void atomic_reduction_v8(int *in, int* out, int arrayLength) {
  int sum=int(0);
  int idx = blockIdx.x*blockDim.x+threadIdx.x;
  for(int i= idx*8;i<arrayLength;i+=blockDim.x*gridDim.x*8) {
    sum+=in[i] + in[i+1] + in[i+2] + in[i+3] +in[i+4] +in[i+5] +in[i+6] +in[i+7];
  }
  atomicAdd(out,sum);
}

__global__ void atomic_reduction_v16(int *in, int* out, int arrayLength) {
  int sum=int(0);
  int idx = blockIdx.x*blockDim.x+threadIdx.x;
  for(int i= idx*16;i<arrayLength;i+=blockDim.x*gridDim.x*16) {
    sum+=in[i] + in[i+1] + in[i+2] + in[i+3] +in[i+4] +in[i+5] +in[i+6] +in[i+7] 
      +in[i+8] +in[i+9] +in[i+10] +in[i+11] +in[i+12] +in[i+13] +in[i+14] +in[i+15] ;
  }
  atomicAdd(out,sum);
}

int main(int argc, char** argv)
{
  unsigned int arrayLength = 52428800;
  unsigned int threads=256;
  if(argc == 3) {
    arrayLength=atoi(argv[1]);
    threads=atoi(argv[2]);
  }

  // launch the kernel N iterations 
  int N = 32;

  std::cout << "Array size: " << arrayLength*sizeof(int)/1024.0/1024.0 << " MB"<<std::endl;
  std::cout << "Thread block size: " << threads << std::endl;
  std::cout << "Repeat the kernel execution  " << N << " times" << std::endl;

  int* array=(int*)malloc(arrayLength*sizeof(int));
  int checksum =0;
  for(int i=0;i<arrayLength;i++) {
    array[i]=rand()%2;
    checksum+=array[i];
  }
  int *in, *out;

  // Declare timers
  std::chrono::high_resolution_clock::time_point t1, t2;


  long long size=sizeof(int)*arrayLength;

  // Get device properties
  cudaDeviceProp props;
  cudaGetDeviceProperties(&props, 0);
  std::cout << "Device name: " << props.name << std::endl;

  cudaMalloc(&in,size);
  cudaMalloc(&out,sizeof(int));

  cudaMemcpy(in,array,arrayLength*sizeof(int),cudaMemcpyHostToDevice);
  cudaDeviceSynchronize();

  int blocks=std::min((arrayLength+threads-1)/threads,2048u);

  // warmup
  for(int i=0;i<N;i++) {
    cudaMemsetAsync(out,0,sizeof(int));
    atomic_reduction<<< dim3(blocks), dim3(threads) >>>(in,out,arrayLength);
  }
  cudaDeviceSynchronize();

  // start timing
  t1 = std::chrono::high_resolution_clock::now();
  for(int i=0;i<N;i++) {
    cudaMemsetAsync(out,0,sizeof(int));
    atomic_reduction<<< dim3(blocks), dim3(threads) >>>(in,out,arrayLength);
  }
  cudaDeviceSynchronize();
  t2 = std::chrono::high_resolution_clock::now();
  double times =  std::chrono::duration_cast<std::chrono::duration<double> >(t2 - t1).count();
  float GB=(float)arrayLength*sizeof(int)*N;
  std::cout << "The average performance of reduction is "<< 1.0E-09 * GB/times<<" GBytes/sec"<<std::endl;

  int sum;
  cudaMemcpy(&sum,out,sizeof(int),cudaMemcpyDeviceToHost);

  if(sum==checksum)
    std::cout<<"VERIFICATION: result is CORRECT"<<std::endl<<std::endl;
  else
    std::cout<<"VERIFICATION: result is INCORRECT!!"<<std::endl<<std::endl;

  t1 = std::chrono::high_resolution_clock::now();
  for(int i=0;i<N;i++) {
    cudaMemsetAsync(out,0,sizeof(int));
    atomic_reduction_v2<<< dim3(blocks/2), dim3(threads) >>>(in,out,arrayLength);
  }
  cudaDeviceSynchronize();
  t2 = std::chrono::high_resolution_clock::now();
  times =  std::chrono::duration_cast<std::chrono::duration<double> >(t2 - t1).count();
  GB=(float)arrayLength*sizeof(int)*N;
  std::cout << "The average performance of reduction is "<< 1.0E-09 * GB/times<<" GBytes/sec"<<std::endl;

  cudaMemcpy(&sum,out,sizeof(int),cudaMemcpyDeviceToHost);

  if(sum==checksum)
    std::cout<<"VERIFICATION: result is CORRECT"<<std::endl<<std::endl;
  else
    std::cout<<"VERIFICATION: result is INCORRECT!!"<<std::endl<<std::endl;
  t1 = std::chrono::high_resolution_clock::now();

  for(int i=0;i<N;i++) {
    cudaMemsetAsync(out,0,sizeof(int));
    atomic_reduction_v4<<< dim3(blocks/4), dim3(threads) >>>(in,out,arrayLength);
  }
  cudaDeviceSynchronize();
  t2 = std::chrono::high_resolution_clock::now();
  times =  std::chrono::duration_cast<std::chrono::duration<double> >(t2 - t1).count();
  GB=(float)arrayLength*sizeof(int)*N;
  std::cout << "The average performance of reduction is "<< 1.0E-09 * GB/times<<" GBytes/sec"<<std::endl;

  cudaMemcpy(&sum,out,sizeof(int),cudaMemcpyDeviceToHost);

  if(sum==checksum)
    std::cout<<"VERIFICATION: result is CORRECT"<<std::endl<<std::endl;
  else
    std::cout<<"VERIFICATION: result is INCORRECT!!"<<std::endl<<std::endl;

  t1 = std::chrono::high_resolution_clock::now();
  for(int i=0;i<N;i++) {
    cudaMemsetAsync(out,0,sizeof(int));
    atomic_reduction_v8<<< dim3(blocks/8), dim3(threads) >>>(in,out,arrayLength);
  }
  cudaDeviceSynchronize();
  t2 = std::chrono::high_resolution_clock::now();
  times =  std::chrono::duration_cast<std::chrono::duration<double> >(t2 - t1).count();
  GB=(float)arrayLength*sizeof(int)*N;
  std::cout << "The average performance of reduction is "<< 1.0E-09 * GB/times<<" GBytes/sec"<<std::endl;

  cudaMemcpy(&sum,out,sizeof(int),cudaMemcpyDeviceToHost);

  if(sum==checksum)
    std::cout<<"VERIFICATION: result is CORRECT"<<std::endl<<std::endl;
  else
    std::cout<<"VERIFICATION: result is INCORRECT!!"<<std::endl<<std::endl;

  t1 = std::chrono::high_resolution_clock::now();
  for(int i=0;i<N;i++) {
    cudaMemsetAsync(out,0,sizeof(int));
    atomic_reduction_v16<<< dim3(blocks/16), dim3(threads) >>>(in,out,arrayLength);
  }
  cudaDeviceSynchronize();
  t2 = std::chrono::high_resolution_clock::now();
  times =  std::chrono::duration_cast<std::chrono::duration<double> >(t2 - t1).count();
  GB=(float)arrayLength*sizeof(int)*N;
  std::cout << "The average performance of reduction is "<< 1.0E-09 * GB/times<<" GBytes/sec"<<std::endl;

  cudaMemcpy(&sum,out,sizeof(int),cudaMemcpyDeviceToHost);

  if(sum==checksum)
    std::cout<<"VERIFICATION: result is CORRECT"<<std::endl<<std::endl;
  else
    std::cout<<"VERIFICATION: result is INCORRECT!!"<<std::endl<<std::endl;

  cudaFree(in);
  cudaFree(out);
  free(array);
  return 0;
}
