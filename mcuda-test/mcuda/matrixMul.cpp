/**
 * Copyright 1993-2015 NVIDIA Corporation.  All rights reserved.
 *
 * Please refer to the NVIDIA end user license agreement (EULA) associated
 * with this source code for terms and conditions that govern your use of
 * this software. Any use, reproduction, disclosure, or distribution of
 * this software and related documentation outside the terms of the EULA
 * is strictly prohibited.
 *
 */

/**
 * Matrix multiplication: C = A * B.
 * Host code.
 *
 * This sample implements matrix multiplication which makes use of shared memory
 * to ensure data reuse, the matrix multiplication is done using tiling
 * approach. It has been written for clarity of exposition to illustrate various
 * CUDA programming principles, not with the goal of providing the most
 * performant generic kernel for matrix multiplication. See also: V. Volkov and
 * J. Demmel, "Benchmarking GPUs to tune dense linear algebra," in Proc. 2008
 * ACM/IEEE Conf. on Supercomputing (SC '08), Piscataway, NJ: IEEE Press, 2008,
 * pp. Art. 31:1-11.
 */

// System includes
#include <assert.h>
#include <stdio.h>

// CUDA runtime
#include <cpucuda/cpucuda_runtime.h>

// Helper functions and utilities to work with CUDA
#include "helper_string.h"

inline int findCudaDevice(int argc, const char **argv) {
	int devID = 0;
	return devID;
}


template <typename T>
void check(T result, char const *const func, const char *const file,
           int const line) {
	if (result) {
		fprintf(stderr, "CUDA error at %s:%d code=%d(%s) \"%s\" \n", file, line,
		        static_cast<unsigned int>(result), "", func);
		exit(EXIT_FAILURE);
	}
}

// This will output the proper CUDA error strings in the event
// that a CUDA host call returns an error
#define checkCudaErrors(val) check((val), #val, __FILE__, __LINE__)



//#define __cpucuda_num_threads 1024;

/**
 * Matrix multiplication (CUDA Kernel) on the device: C = A * B
 * wA is A's width and wB is B's width
 */

/*
struct MatrixMulCUDA__MCUDA_kernel_params
{
	float * C;
	float * A;
	float * B;
	int wA;
	int wB;
};

typedef struct MatrixMulCUDA__MCUDA_kernel_params MatrixMulCUDA__MCUDA_kernel_params;
*/
//void MatrixMulCUDA__MCUDA_kernel(dim3 blockIdx, dim3 blockDim, dim3 gridDim, float * C, float * A, float * B, int wA, int wB)
void MatrixMulCUDA(dim3 gridDim, dim3 blockDim, dim3 blockIdx, float * C, float * A, float * B, int wA, int wB)
{
	dim3 threadIdx;
	int __threadIndex;
	/*
	float * C = ((MatrixMulCUDA__MCUDA_kernel_params * )__params)->C;
	float * A = ((MatrixMulCUDA__MCUDA_kernel_params * )__params)->A;
	float * B = ((MatrixMulCUDA__MCUDA_kernel_params * )__params)->B;
	int wA = ((MatrixMulCUDA__MCUDA_kernel_params * )__params)->wA;
	int wB = ((MatrixMulCUDA__MCUDA_kernel_params * )__params)->wB;
	*/
	int bx[1024];
	int by[1024];
	int tx[1024];
	int ty[1024];
	int aBegin;
	int aEnd[1024];
	int aStep[1024];
	int bBegin;
	int bStep[1024];
	float Csub[1024];
	int a[1024], b[1024];
	int c;
	int onPZsHKE[1024];
	for (((threadIdx.z=0), (__threadIndex=0)); threadIdx.z<blockDim.z; threadIdx.z ++ )
	{
		for (threadIdx.y=0; threadIdx.y<blockDim.y; threadIdx.y ++ )
		{
			for (threadIdx.x=0; threadIdx.x<blockDim.x; ((threadIdx.x ++ ), (__threadIndex ++ )))
			{
// Block index 
// Thread index 
// Index of the first sub-matrix of A processed by the block 
// Index of the last sub-matrix of A processed by the block 
// Step size used to iterate through the sub-matrices of A 
// Index of the first sub-matrix of B processed by the block 
// Step size used to iterate through the sub-matrices of B 
// Csub is used to store the element of the block sub-matrix 
// that is computed by the thread 
// Loop over all the sub-matrices of A and B 
// required to compute the block sub-matrix 
// Write the block sub-matrix to device memory; 
// each thread writes one element 
				bx[__threadIndex]=blockIdx.x;
				by[__threadIndex]=blockIdx.y;
				tx[__threadIndex]=threadIdx.x;
				ty[__threadIndex]=threadIdx.y;
				aBegin=((wA*32)*by[__threadIndex]);
				aEnd[__threadIndex]=((aBegin+wA)-1);
				aStep[__threadIndex]=32;
				bBegin=(32*bx[__threadIndex]);
				bStep[__threadIndex]=(32*wB);
				Csub[__threadIndex]=0;
				((a[__threadIndex]=aBegin), (b[__threadIndex]=bBegin));
				onPZsHKE[__threadIndex]=a[__threadIndex]<=aEnd[__threadIndex];
/*
  __MCUDA_THREAD_BODY
*/
			}

		}

/*
  __MCUDA_OUTER_LOOP
*/
	}

	while (onPZsHKE[0])
	{
// Declaration of the shared memory array As used to 
// store the sub-matrix of A 
		float As[32][32];
// Declaration of the shared memory array Bs used to 
// store the sub-matrix of B 
		float Bs[32][32];
// Load the matrices from device memory 
// to shared memory; each thread loads 
// one element of each matrix 
// Synchronize to make sure the matrices are loaded 
// Multiply the two matrices together; 
// each thread computes one element 
// of the block sub-matrix 
		int k;
#pragma unroll 
// Synchronize to make sure that the preceding 
// computation is done before loading two new 
// sub-matrices of A and B in the next iteration 
		for (((threadIdx.z=0), (__threadIndex=0)); threadIdx.z<blockDim.z; threadIdx.z ++ )
		{
			for (threadIdx.y=0; threadIdx.y<blockDim.y; threadIdx.y ++ )
			{
				for (threadIdx.x=0; threadIdx.x<blockDim.x; ((threadIdx.x ++ ), (__threadIndex ++ )))
				{
					As[ty[__threadIndex]][tx[__threadIndex]]=A[((a[__threadIndex]+(wA*ty[__threadIndex]))+tx[__threadIndex])];
					Bs[ty[__threadIndex]][tx[__threadIndex]]=B[((b[__threadIndex]+(wB*ty[__threadIndex]))+tx[__threadIndex])];
/*
  __MCUDA_THREAD_BODY
*/
				}

			}

/*
  __MCUDA_OUTER_LOOP
*/
		}

		for (((threadIdx.z=0), (__threadIndex=0)); threadIdx.z<blockDim.z; threadIdx.z ++ )
		{
			for (threadIdx.y=0; threadIdx.y<blockDim.y; threadIdx.y ++ )
			{
				for (threadIdx.x=0; threadIdx.x<blockDim.x; ((threadIdx.x ++ ), (__threadIndex ++ )))
				{
					for (k=0; k<32;  ++ k)
					{
						Csub[__threadIndex]+=(As[ty[__threadIndex]][k]*Bs[k][tx[__threadIndex]]);
					}

/*
  __MCUDA_THREAD_BODY
*/
				}

			}

/*
  __MCUDA_OUTER_LOOP
*/
		}

		for (((threadIdx.z=0), (__threadIndex=0)); threadIdx.z<blockDim.z; threadIdx.z ++ )
		{
			for (threadIdx.y=0; threadIdx.y<blockDim.y; threadIdx.y ++ )
			{
				for (threadIdx.x=0; threadIdx.x<blockDim.x; ((threadIdx.x ++ ), (__threadIndex ++ )))
				{
					((a[__threadIndex]+=aStep[__threadIndex]), (b[__threadIndex]+=bStep[__threadIndex]));
					onPZsHKE[__threadIndex]=a[__threadIndex]<=aEnd[__threadIndex];
/*
  __MCUDA_THREAD_BODY
*/
				}

			}

/*
  __MCUDA_OUTER_LOOP
*/
		}

	}

	for (((threadIdx.z=0), (__threadIndex=0)); threadIdx.z<blockDim.z; threadIdx.z ++ )
	{
		for (threadIdx.y=0; threadIdx.y<blockDim.y; threadIdx.y ++ )
		{
			for (threadIdx.x=0; threadIdx.x<blockDim.x; ((threadIdx.x ++ ), (__threadIndex ++ )))
			{
				c=(((wB*32)*by[__threadIndex])+(32*bx[__threadIndex]));
				C[((c+(wB*ty[__threadIndex]))+tx[__threadIndex])]=Csub[__threadIndex];
/*
  __MCUDA_THREAD_BODY
*/
			}

		}

/*
  __MCUDA_OUTER_LOOP
*/
	}

}

/*
void MatrixMulCUDA(float * C, float * A, float * B, int wA, int wB, dim3 gridDim, dim3 blockDim)
{
	MatrixMulCUDA__MCUDA_kernel_params *  __params;
	__params=((MatrixMulCUDA__MCUDA_kernel_params * )malloc(sizeof (struct MatrixMulCUDA__MCUDA_kernel_params)));
	__params->C=C;
	__params->A=A;
	__params->B=B;
	__params->wA=wA;
	__params->wB=wB;
	__mcuda_kernel_launch(MatrixMulCUDA__MCUDA_kernel, gridDim, blockDim, ((void *  * )( & __params)));
}
*/


void ConstantInit(float *data, int size, float val) {
  for (int i = 0; i < size; ++i) {
    data[i] = val;
  }
}

/**
 * Run a simple test of matrix multiplication using CUDA
 */
int MatrixMultiply(int argc, char **argv, int block_size, const dim3 &dimsA,
                   const dim3 &dimsB) {
  // Allocate host memory for matrices A and B
  unsigned int size_A = dimsA.x * dimsA.y;
  unsigned int mem_size_A = sizeof(float) * size_A;
  float *h_A;
  checkCudaErrors(cpucudaHostMalloc((void**)&h_A, mem_size_A));
  unsigned int size_B = dimsB.x * dimsB.y;
  unsigned int mem_size_B = sizeof(float) * size_B;
  float *h_B;
  checkCudaErrors(cpucudaHostMalloc((void**)&h_B, mem_size_B));
  cpucudaStream_t stream;

  // Initialize host memory
  const float valB = 0.01f;
  ConstantInit(h_A, size_A, 1.0f);
  ConstantInit(h_B, size_B, valB);

  // Allocate device memory
  float *d_A, *d_B, *d_C;

  // Allocate host matrix C
  dim3 dimsC(dimsB.x, dimsA.y, 1);
  unsigned int mem_size_C = dimsC.x * dimsC.y * sizeof(float);
  float *h_C;
  checkCudaErrors(cpucudaHostMalloc((void**)&h_C, mem_size_C));

  if (h_C == NULL) {
    fprintf(stderr, "Failed to allocate host matrix C!\n");
    exit(EXIT_FAILURE);
  }

  checkCudaErrors(cpucudaMalloc(reinterpret_cast<void **>(&d_A), mem_size_A));
  checkCudaErrors(cpucudaMalloc(reinterpret_cast<void **>(&d_B), mem_size_B));
  checkCudaErrors(cpucudaMalloc(reinterpret_cast<void **>(&d_C), mem_size_C));
  // Allocate CUDA events that we'll use for timing
  cpucudaEvent_t start, stop;
  checkCudaErrors(cpucudaEventCreate(&start));
  checkCudaErrors(cpucudaEventCreate(&stop));

  checkCudaErrors(cpucudaStreamCreateWithFlags(&stream, cpucudaStreamNonBlocking));

  // copy host memory to device
  checkCudaErrors(
      cpucudaMemcpyAsync(d_A, h_A, mem_size_A, cpucudaMemcpyHostToDevice, stream));
  checkCudaErrors(
      cpucudaMemcpyAsync(d_B, h_B, mem_size_B, cpucudaMemcpyHostToDevice, stream));

  // Setup execution parameters
  dim3 threads(block_size, block_size);
  dim3 grid(dimsB.x / threads.x, dimsA.y / threads.y);

  // Create and start timer
  ////printf("Computing result using CUDA Kernel...\n");

  // Performs warmup operation using matrixMul CUDA kernel
#pragma omp parallel for collapse(3) schedule(static)
  for (size_t blockz = 0; blockz < grid.z; blockz++)
	  for (size_t blocky = 0; blocky < grid.y; blocky++)
		  for (size_t blockx = 0; blockx < grid.x; blockx++) {
			  dim3 blockIdx{blockx, blocky, blockz};
			  MatrixMulCUDA(grid, threads, blockIdx, d_C, d_A, d_B, dimsA.x, dimsB.x);
		  }

  //cudaDeviceSynchronize();
  struct timespec ___my_clock_start;
  struct timespec ___my_clock_end;
  clock_gettime(CLOCK_MONOTONIC, &___my_clock_start);

  // Execute the kernel
  //int nIter = 300;
  //int nIter = 3;
  int nIter = 1;

  for (int j = 0; j < nIter; j++) {
#pragma omp parallel for collapse(3) schedule(static)
  for (size_t blockz = 0; blockz < grid.z; blockz++)
	  for (size_t blocky = 0; blocky < grid.y; blocky++)
		  for (size_t blockx = 0; blockx < grid.x; blockx++) {
			  dim3 blockIdx{blockx, blocky, blockz};
			  MatrixMulCUDA(grid, threads, blockIdx, d_C, d_A, d_B, dimsA.x, dimsB.x);
		  }
  }
  //cudaDeviceSynchronize();
  clock_gettime(CLOCK_MONOTONIC, &___my_clock_end);
  struct timespec ___my_clock_tmp =
	  {___my_clock_end.tv_sec - ___my_clock_start.tv_sec,
	   ___my_clock_end.tv_nsec - ___my_clock_start.tv_nsec};
  double ___my_clock_elapsed = (___my_clock_tmp.tv_sec + ((double) ___my_clock_tmp.tv_nsec) * .000000001);


  // Record the stop event
  //checkCudaErrors(cudaEventRecord(stop, stream));

  // Wait for the stop event to complete
  //checkCudaErrors(cudaEventSynchronize(stop));

  float msecTotal = ___my_clock_elapsed * 1000;
  //float msecTotal = 0.0f;
  //checkCudaErrors(cudaEventElapsedTime(&msecTotal, start, stop));

  // Compute and print the performance
  float msecPerMatrixMul = msecTotal / nIter;
  double flopsPerMatrixMul = 2.0 * static_cast<double>(dimsA.x) *
                             static_cast<double>(dimsA.y) *
                             static_cast<double>(dimsB.x);
  double gigaFlops =
      (flopsPerMatrixMul * 1.0e-9f) / (msecPerMatrixMul / 1000.0f);
  //printf(
  //"Performance= %.2f GFlop/s, Time= %.3f msec, Size= %.0f Ops,"
  //" WorkgroupSize= %u threads/block\n",
  //gigaFlops, msecPerMatrixMul, flopsPerMatrixMul, threads.x * threads.y);
  printf("%f,", msecPerMatrixMul / 1000.0f);


  // Copy result from device to host
  checkCudaErrors(
      cpucudaMemcpyAsync(h_C, d_C, mem_size_C, cpucudaMemcpyDeviceToHost, stream));
  checkCudaErrors(cpucudaStreamSynchronize(stream));

  //printf("Checking computed result for correctness: ");
  bool correct = true;

  // test relative error by the formula
  //     |<x, y>_cpu - <x,y>_gpu|/<|x|, |y|>  < eps
  double eps = 1.e-6;  // machine zero

  for (int i = 0; i < static_cast<int>(dimsC.x * dimsC.y); i++) {
    double abs_err = fabs(h_C[i] - (dimsA.x * valB));
    double dot_length = dimsA.x;
    double abs_val = fabs(h_C[i]);
    double rel_err = abs_err / abs_val / dot_length;

    if (rel_err > eps) {
      printf("Error! Matrix[%05d]=%.8f, ref=%.8f error term is > %E\n", i,
             h_C[i], dimsA.x * valB, eps);
      correct = false;
    }
  }

  //printf("%s\n", correct ? "Result = PASS" : "Result = FAIL");

  // Clean up memory
  checkCudaErrors(cpucudaHostFree(h_A));
  checkCudaErrors(cpucudaHostFree(h_B));
  checkCudaErrors(cpucudaHostFree(h_C));
  checkCudaErrors(cpucudaFree(d_A));
  checkCudaErrors(cpucudaFree(d_B));
  checkCudaErrors(cpucudaFree(d_C));
  checkCudaErrors(cpucudaEventDestroy(start));
  checkCudaErrors(cpucudaEventDestroy(stop));
  /*
  printf(
      "\nNOTE: The CUDA Samples are not meant for performance"
      "measurements. Results may vary when GPU Boost is enabled.\n");
  */

  if (correct) {
    return EXIT_SUCCESS;
  } else {
    return EXIT_FAILURE;
  }
}

/**
 * Program main
 */
int main(int argc, char **argv) {
	//printf("[Matrix Multiply Using CUDA] - Starting...\n");

  if (checkCmdLineFlag(argc, (const char **)argv, "help") ||
      checkCmdLineFlag(argc, (const char **)argv, "?")) {
    printf("Usage -device=n (n >= 0 for deviceID)\n");
    printf("      -wA=WidthA -hA=HeightA (Width x Height of Matrix A)\n");
    printf("      -wB=WidthB -hB=HeightB (Width x Height of Matrix B)\n");
    printf(
        "  Note: Outer matrix dimensions of A & B matrices"
        " must be equal.\n");

    exit(EXIT_SUCCESS);
  }

  // This will pick the best possible CUDA capable device, otherwise
  // override the device ID based on input provided at the command line
  int dev = findCudaDevice(argc, (const char **)argv);

  int block_size = 32;

  dim3 dimsA(32 * block_size, 32 * block_size, 1);
  dim3 dimsB(32 * block_size, 32 * block_size, 1);
  //dim3 dimsA(1024, 1024, 1);
  //dim3 dimsB(1024, 1024, 1);

  // width of Matrix A
  if (checkCmdLineFlag(argc, (const char **)argv, "wA")) {
    dimsA.x = getCmdLineArgumentInt(argc, (const char **)argv, "wA");
  }

  // height of Matrix A
  if (checkCmdLineFlag(argc, (const char **)argv, "hA")) {
    dimsA.y = getCmdLineArgumentInt(argc, (const char **)argv, "hA");
  }

  // width of Matrix B
  if (checkCmdLineFlag(argc, (const char **)argv, "wB")) {
    dimsB.x = getCmdLineArgumentInt(argc, (const char **)argv, "wB");
  }

  // height of Matrix B
  if (checkCmdLineFlag(argc, (const char **)argv, "hB")) {
    dimsB.y = getCmdLineArgumentInt(argc, (const char **)argv, "hB");
  }

  if (dimsA.x != dimsB.y) {
    printf("Error: outer matrix dimensions must be equal. (%d != %d)\n",
           dimsA.x, dimsB.y);
    exit(EXIT_FAILURE);
  }

  //printf("MatrixA(%d,%d), MatrixB(%d,%d)\n", dimsA.x, dimsA.y, dimsB.x, dimsB.y);

  int matrix_result = MatrixMultiply(argc, argv, block_size, dimsA, dimsB);

  exit(matrix_result);
}

