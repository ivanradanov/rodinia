// Copyright (c) 2019-2020, NVIDIA CORPORATION.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <cuda.h>

__host__ __device__ __forceinline__
void clip_plus( const bool &clip, const int &n, int &plus ) {
  if ( clip ) {
    if ( plus >= n ) {
      plus = n - 1;
    }
  } else {
    if ( plus >= n ) {
      plus -= n;
    }
  }
}

__host__ __device__ __forceinline__
void clip_minus( const bool &clip, const int &n, int &minus ) {
  if ( clip ) {
    if ( minus < 0 ) {
      minus = 0;
    }
  } else {
    if ( minus < 0 ) {
      minus += n;
    }
  }
}

///////////////////////////////////////////////////////////////////////////////
//                          BOOLRELEXTREMA 1D                                //
///////////////////////////////////////////////////////////////////////////////

template<typename T>
__global__ void relextrema_1D(
  const int  n,
  const int  order,
  const bool clip,
  const T *__restrict__ inp,
  bool *__restrict__ results)
{
  const int tx = blockIdx.x * blockDim.x + threadIdx.x;
  const int stride = blockDim.x * gridDim.x;

  for ( int tid = tx; tid < n; tid += stride ) {

    const T data = inp[tid];
    bool    temp = true;

    for ( int o = 1; o < ( order + 1 ); o++ ) {
      int plus = tid + o;
      int minus = tid - o;

      clip_plus( clip, n, plus );
      clip_minus( clip, n, minus );

      temp &= data > inp[plus];
      temp &= data >= inp[minus];
    }
    results[tid] = temp;
  }
}

template<typename T>
void cpu_relextrema_1D(
  const int  n,
  const int  order,
  const bool clip,
  const T *__restrict__ inp,
  bool *__restrict__ results)
{
  for ( int tid = 0; tid < n; tid++ ) {

    const T data = inp[tid];
    bool    temp = true;

    for ( int o = 1; o < ( order + 1 ); o++ ) {
      int plus = tid + o;
      int minus = tid - o;

      clip_plus( clip, n, plus );
      clip_minus( clip, n, minus );

      temp &= data > inp[plus];
      temp &= data >= inp[minus];
    }
    results[tid] = temp;
  }
}


template<typename T>
__global__ void relextrema_2D(
  const int  in_x,
  const int  in_y,
  const int  order,
  const bool clip,
  const int  axis,
  const T *__restrict__ inp,
  bool *__restrict__ results) 
{
  const int ty = blockIdx.x * blockDim.x + threadIdx.x;
  const int tx = blockIdx.y * blockDim.y + threadIdx.y;

  if ( ( tx < in_y ) && ( ty < in_x ) ) {
    int tid = tx * in_x + ty ;

    const T data = inp[tid] ;
    bool    temp = true ;

    for ( int o = 1; o < ( order + 1 ); o++ ) {

      int plus;
      int minus;

      if ( axis == 0 ) {
        plus  = tx + o;
        minus = tx - o;

        clip_plus( clip, in_y, plus );
        clip_minus( clip, in_y, minus );

        plus  = plus * in_x + ty;
        minus = minus * in_x + ty;
      } else {
        plus  = ty + o;
        minus = ty - o;

        clip_plus( clip, in_x, plus );
        clip_minus( clip, in_x, minus );

        plus  = tx * in_x + plus;
        minus = tx * in_x + minus;
      }

      temp &= data > inp[plus] ;
      temp &= data >= inp[minus] ;
    }
    results[tid] = temp;
  }
}

template<typename T>
void cpu_relextrema_2D(
  const int  in_x,
  const int  in_y,
  const int  order,
  const bool clip,
  const int  axis,
  const T *__restrict__ inp,
  bool *__restrict__ results) 
{
  for (int tx = 0; tx < in_y; tx++)
    for (int ty = 0; ty < in_x; ty++) {

      int tid = tx * in_x + ty ;

      const T data = inp[tid] ;
      bool    temp = true ;

      for ( int o = 1; o < ( order + 1 ); o++ ) {

        int plus;
        int minus;

        if ( axis == 0 ) {
          plus  = tx + o;
          minus = tx - o;

          clip_plus( clip, in_y, plus );
          clip_minus( clip, in_y, minus );

          plus  = plus * in_x + ty;
          minus = minus * in_x + ty;
        } else {
          plus  = ty + o;
          minus = ty - o;

          clip_plus( clip, in_x, plus );
          clip_minus( clip, in_x, minus );

          plus  = tx * in_x + plus;
          minus = tx * in_x + minus;
        }

        temp &= data > inp[plus] ;
        temp &= data >= inp[minus] ;
      }
      results[tid] = temp;
    }
}

template <typename T>
long test_1D (const int length, const int order, const bool clip,
              const int repeat, const char* type) 
{
  T* x = (T*) malloc (sizeof(T)*length);
  for (int i = 0; i < length; i++)
    x[i] = rand() % length;
  
  bool* cpu_r = (bool*) malloc (sizeof(bool)*length);
  bool* gpu_r = (bool*) malloc (sizeof(bool)*length);

  T* d_x;
  bool *d_result;
  cudaMalloc((void**)&d_x, length*sizeof(T));
  cudaMemcpy(d_x, x, length*sizeof(T), cudaMemcpyHostToDevice);
  cudaMalloc((void**)&d_result, length*sizeof(bool));

  dim3 grids ((length+255)/256);
  dim3 threads (256);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int n = 0; n < repeat; n++)
    relextrema_1D<T><<<grids, threads>>>(length, order, clip, d_x, d_result);

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average 1D kernel (type = %s, order = %d, clip = %d) execution time %f (s)\n", 
         type, order, clip, (time * 1e-9f) / repeat);

  cudaMemcpy(gpu_r, d_result, length*sizeof(bool), cudaMemcpyDeviceToHost);

  cpu_relextrema_1D<T>(length, order, clip, x, cpu_r);

  int error = 0;
  for (int i = 0; i < length; i++)
    if (cpu_r[i] != gpu_r[i]) {
      error = 1; 
      break;
    }

  cudaFree(d_x);
  cudaFree(d_result);
  free(x);
  free(cpu_r);
  free(gpu_r);
  if (error) printf("1D test: FAILED\n");
  return time;
}

template <typename T>
long test_2D (const int length_x, const int length_y, const int order,
              const bool clip, const int axis, const int repeat, const char* type) 
{
  const int length = length_x * length_y;
  T* x = (T*) malloc (sizeof(T)*length);
  for (int i = 0; i < length; i++)
    x[i] = rand() % length;
  
  bool* cpu_r = (bool*) malloc (sizeof(bool)*length);
  bool* gpu_r = (bool*) malloc (sizeof(bool)*length);

  T* d_x;
  bool *d_result;
  cudaMalloc((void**)&d_x, length*sizeof(T));
  cudaMemcpy(d_x, x, length*sizeof(T), cudaMemcpyHostToDevice);
  cudaMalloc((void**)&d_result, length*sizeof(bool));

  dim3 grids ((length_x+15)/16, (length_y+15)/16);
  dim3 threads (16, 16);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int n = 0; n < repeat; n++)
    relextrema_2D<<<grids, threads>>>(length_x, length_y, order, clip, axis, d_x, d_result);

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();

  printf("Average 2D kernel (type = %s, order = %d, clip = %d, axis = %d) execution time %f (s)\n", 
         type, order, clip, axis, (time * 1e-9f) / repeat);

  cudaMemcpy(gpu_r, d_result, length*sizeof(bool), cudaMemcpyDeviceToHost);

  cpu_relextrema_2D(length_x, length_y, order, clip, axis, x, cpu_r);

  int error = 0;
  for (int i = 0; i < length; i++)
    if (cpu_r[i] != gpu_r[i]) {
      error = 1; 
      break;
    }

  cudaFree(d_x);
  cudaFree(d_result);
  free(x);
  free(cpu_r);
  free(gpu_r);
  if (error) printf("2D test: FAILED\n");
  return time;
}

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("Usage ./%s <repeat>\n", argv[0]);
    return 1;
  }
  const int repeat = atoi(argv[1]);

  long time = 0;

  for (int order = 1; order <= 128; order = order * 2) {
    time += test_1D<   int>(1000000, order, true, repeat, "int");
    time += test_1D<  long>(1000000, order, true, repeat, "long");
    time += test_1D< float>(1000000, order, true, repeat, "float");
    time += test_1D<double>(1000000, order, true, repeat, "double");
  }

  for (int order = 1; order <= 128; order = order * 2) {
    time += test_2D<   int>(1000, 1000, order, true, 1, repeat, "int");
    time += test_2D<  long>(1000, 1000, order, true, 1, repeat, "long");
    time += test_2D< float>(1000, 1000, order, true, 1, repeat, "float");
    time += test_2D<double>(1000, 1000, order, true, 1, repeat, "double");
  }

  for (int order = 1; order <= 128; order = order * 2) {
    time += test_2D<   int>(1000, 1000, order, true, 0, repeat, "int");
    time += test_2D<  long>(1000, 1000, order, true, 0, repeat, "long");
    time += test_2D< float>(1000, 1000, order, true, 0, repeat, "float");
    time += test_2D<double>(1000, 1000, order, true, 0, repeat, "double");
  }

  printf("\n-----------------------------------------------\n");
  printf("Total kernel execution time: %lf (s)", time * 1e-9);
  printf("\n-----------------------------------------------\n");

  return 0;
}
