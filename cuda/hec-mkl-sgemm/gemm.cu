#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <iterator>
#include <limits>
#include <list>
#include <vector>

// mkl/sycl includes
#include <cuda.h>
#include <cublas_v2.h>

template <typename T>
void print_2x2_matrix_values(T M, int ldM, std::string M_name)
{
  std::cout << std::endl;
  std::cout << "\t\t\t" << M_name << " = [ " << M[0*ldM + 0] << ", " << M[1*ldM + 0]         << ", ...\n";
  std::cout << "\t\t\t    [ "                << M[0*ldM + 1] << ", " << M[1*ldM + 1] << ", ...\n";
  std::cout << "\t\t\t    [ "                << "...\n";
  std::cout << std::endl;
}

//
// helpers for initializing templated scalar data type values.
//
template <typename fp> void rand_matrix(fp *M, int n_row, int n_col)
{
  for (int i = 0; i < n_row; i++)
    for (int j = 0; j < n_col; j++)
      M[i * n_col + j] = rand() % 5;
}

//
// Main example for Gemm consisting of
// initialization of A, B and C matrices as well as
// scalars alpha and beta.  Then the product
//
// C = alpha * op(A) * op(B) + beta * C
//
// is performed and finally the results are post processed.
//
template <typename fp>
void run_gemm_example(int repeat) {

  //
  // Initialize data for Gemm
  //
  // C = alpha * op(A) * op(B)  + beta * C
  //

  // matrix data sizes
  int m = 79;
  int n = 83;
  int k = 91;

  // set scalar fp values
  const fp alpha = fp(2.0);
  const fp beta  = fp(0.5);

  // prepare matrix data
  fp* a = (float *) aligned_alloc(64, (m * k) * sizeof(float));
  fp* b = (float *) aligned_alloc(64, (k * n) * sizeof(float));
  fp* c = (float *) aligned_alloc(64, (m * n) * sizeof(float));

  srand(2);
  rand_matrix(a, m, k);
  rand_matrix(b, k, n);
  rand_matrix(c, m, n);

  float *da, *db, *dc;
  cudaMalloc((void**)&da, (m * k) * sizeof(float));
  cudaMalloc((void**)&db, (k * n) * sizeof(float));
  cudaMalloc((void**)&dc, (m * n) * sizeof(float));
  cudaMemcpy(da, a, (m * k) * sizeof(float), cudaMemcpyHostToDevice);
  cudaMemcpy(db, b, (k * n) * sizeof(float), cudaMemcpyHostToDevice);
  cudaMemcpy(dc, c, (m * n) * sizeof(float), cudaMemcpyHostToDevice);

  // create execution queue and buffers of matrix data
  cublasHandle_t h;
  cublasCreate(&h);

  cudaDeviceSynchronize();
  auto start = std::chrono::steady_clock::now();

  for (int i = 0; i < repeat; i++) 
    cublasSgemm(h, CUBLAS_OP_N, CUBLAS_OP_N, n, m, k, &alpha,
        db, n, da, k, &beta, dc, n);

  cudaDeviceSynchronize();
  auto end = std::chrono::steady_clock::now();
  auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
  printf("Average sgemm execution time: %f (s)\n", (time * 1e-9f) / repeat);

  cudaMemcpy(c, dc, (m * n) * sizeof(float), cudaMemcpyDeviceToHost);
  cublasDestroy(h);

  cudaFree(da);
  cudaFree(db);
  cudaFree(dc);

  //
  // Post Processing
  //

  std::cout << "\n\t\tOutputting 2x2 block of A,B,C matrices:" << std::endl;

  // output the top 2x2 block of A matrix
  print_2x2_matrix_values(a, k, "A");

  // output the top 2x2 block of B matrix
  print_2x2_matrix_values(b, n, "B");

  // output the top 2x2 block of C matrix
  print_2x2_matrix_values(c, n, "C");

  free(a);
  free(b);
  free(c);
}

//
// Main entry point for example.
//
int main (int argc, char ** argv) {
  if (argc != 2) {
    printf("Usage: %s <repeat>\n", argv[0]);
    return 1;
  }
  const int repeat = atoi(argv[1]);

  std::cout << "\tRunning with single precision real data type:" << std::endl;
  run_gemm_example<float>(repeat);
  return 0;
}
