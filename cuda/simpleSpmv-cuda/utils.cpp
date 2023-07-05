#include <math.h>
#include "mv.h"

void init_vector(REAL *vector, int m)
{
  for (int i = 0; i<m; i++) {
    vector[i] = (REAL)drand48();
  }
}

void init_matrix(REAL *matrix, int num_rows, size_t nnz)
{
  size_t n = (size_t)num_rows * num_rows;

  REAL *d = (REAL *) malloc(n * sizeof(REAL));

  srand(123);
  for (size_t i = 0; i < n; i++) d[i] = (REAL)i;
  for (size_t i = n; i > 0; i--) {
    size_t a = i-1;
    size_t b = rand() % i;
    if (a != b) {
      auto t = d[a];
      d[a] = d[b];
      d[b] = t;
    }
  }

  for (int i = 0; i < num_rows; i++) {
    for (int j = 0; j < num_rows; j++) {
      matrix[i*num_rows+j] = (d[i*num_rows+j] >= nnz) ? 0 : (REAL)(drand48()+1);
    }
  }

  free(d);
}

void init_csr(size_t *row_indices, REAL *values,
              int *col_indices, REAL *matrix,
              int num_rows, size_t nnz)
{
  row_indices[num_rows] = nnz;
  row_indices[0] = 0;
  int *non_zero_elements = (int*) malloc (num_rows * sizeof(int));

  size_t tmp = 0;
  for (int i = 0; i < num_rows; i++) {
    int nnz_per_row = 0; // nnz per row
    for (int j = 0; j < num_rows; j++) {
      if(matrix[i*num_rows+j] != 0) {
        values[tmp] = matrix[i*num_rows+j];
        col_indices[tmp] = j;
        tmp++;
        nnz_per_row++;
      }
    }
    non_zero_elements[i] = nnz_per_row;
  }

  for (int i = 1; i < num_rows; i++) {
    row_indices[i] = row_indices[i-1] + non_zero_elements[i-1];
  }

  free(non_zero_elements);
}

void mv_csr_serial(const int num_rows,
                   const size_t *row_indices,
                   const int *col_indices,
                   const REAL *values, const REAL *x, REAL *y)
{
  for(int row = 0; row < num_rows; row++){
    size_t row_start = row_indices[row];
    size_t row_end = row_indices[row+1];

    REAL dot = 0;
    for ( size_t i = row_start; i < row_end; i++)
      dot += values[i] * x[col_indices[i]];

    y[row] = dot;
  }
}

/* compare two arrays and return rate of difference */
float check(REAL *A, REAL *B, size_t n)
{
  size_t i;
  double diffsum = 0, sum = 0;
  for (i = 0; i < n; i++) {
    diffsum += fabs(A[i] - B[i]);
    sum += fabs(B[i]);
  }
  return diffsum / sum;
}
