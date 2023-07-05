#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "mv.h"

int main(int argc, char *argv[])
{
  size_t nnz = 0;
  int num_rows = 0;
  int repeat = 0;

  if (argc != 4) {
    printf("Usage %s <number of non-zero elements> <number of rows in a square matrix> <repeat>\n", argv[0]);
    return 1;
  }

  nnz = atol(argv[1]);
  num_rows = atoi(argv[2]);
  repeat = atoi(argv[3]);

  size_t num_elems = (size_t)num_rows * num_rows;

  assert(nnz > 0);
  assert(num_rows > 0);
  assert(nnz <= num_elems);

  size_t vector_size_bytes = num_rows * sizeof(REAL);
  size_t matrix_size_bytes = num_elems * sizeof(REAL);
  size_t value_size_bytes  = nnz * sizeof(REAL);
  size_t colidx_size_bytes = nnz * sizeof(int);
  size_t rowidx_size_bytes = (num_rows + 1) * sizeof(size_t);

  size_t *row_indices = (size_t *) malloc (rowidx_size_bytes);
  int *col_indices = (int *) malloc (colidx_size_bytes);
  REAL *values = (REAL *) malloc (value_size_bytes);

  REAL *x = (REAL *) malloc (vector_size_bytes);
  REAL *y = (REAL *) malloc (vector_size_bytes);
  REAL *y_csr = (REAL *) malloc (vector_size_bytes);
  REAL *y_dense = (REAL *) malloc (vector_size_bytes);
  REAL *y_warmup = (REAL *) malloc (vector_size_bytes);
  REAL *matrix = (REAL *) malloc (matrix_size_bytes);

  srand48(1<<12);
  init_matrix(matrix, num_rows, nnz);
  init_vector(x, num_rows);
  init_csr(row_indices, values, col_indices, matrix, num_rows, nnz);

  // reference results in y
  mv_csr_serial(num_rows, row_indices, col_indices, values, x, y);

  printf("Number of non-zero elements: %lu\n", nnz);
  printf("Number of rows in a square matrix: %d\n", num_rows);
  printf("Sparsity: %lf%%\n", (num_elems - nnz) * 1.0 / num_elems * 100.0);

  // thread block size
  for (int bs = 32; bs <= 1024; bs = bs * 2) {
    printf("\nThread block size: %d\n", bs);

    // warmup run
    mv_dense_parallel(1, bs, num_rows, x, matrix, y_warmup);

    long elapsed = mv_dense_parallel(repeat, bs, num_rows, x, matrix, y_dense);

    printf("Average dense kernel execution time (ms): %lf\n", elapsed * 1e-6 / repeat);
    printf("Error rate: %f\n", check(y, y_dense, num_rows));
  }

  for (int bs = 32; bs <= 1024; bs = bs * 2) {
    printf("\nThread block size: %d\n", bs);
    // warmup run
    mv_csr_parallel(1, bs, num_rows, x, nnz, matrix, y_warmup);

    long elapsed = mv_csr_parallel(repeat, bs, num_rows, x, nnz, matrix, y_csr);

    printf("Average csr kernel execution time (ms): %lf\n", elapsed * 1e-6 / repeat);
    printf("Error rate: %f\n", check(y, y_csr, num_rows));
  }

  free(row_indices);
  free(col_indices);
  free(values);
  free(x);
  free(y);
  free(y_csr);
  free(y_dense);
  free(y_warmup);
  free(matrix);
  return 0;
}
