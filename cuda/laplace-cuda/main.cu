/** GPU Laplace solver using optimized red-black Gauss Seidel with SOR solver
 *
 * author Kyle E. Niemeyer
 * date 09/21/2012
 *
 * Solves Laplace's equation in 2D (e.g., heat conduction in a rectangular plate)
 * on GPU using CUDA with the red-black Gauss Seidel with sucessive overrelaxation
 * (SOR) that has been "optimized". This means that the red and black kernels
 * only loop over their respective cells, instead of over all cells and skipping
 * even/odd cells. This requires separate arrays for red and black cells.
 *
 * Boundary conditions:
 * T = 0 at x = 0, x = L, y = 0
 * T = TN at y = H
 */

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <cuda.h>
#include "timer.h"

/** Problem size along one side; total number of cells is this squared */
#define NUM 512

// block size
#define BLOCK_SIZE 128

#define Real float
#define ZERO 0.0f
#define ONE 1.0f
#define TWO 2.0f

/** SOR relaxation parameter */
const Real omega = 1.85f;

/** Function to evaluate coefficient matrix and right-hand side vector.
 *
 * \param[in]   rowmax   number of rows
 * \param[in]   colmax   number of columns
 * \param[in]   th_cond  thermal conductivity
 * \param[in]   dx       grid size in x dimension (uniform)
 * \param[in]   dy       grid size in y dimension (uniform)
 * \param[in]   width    width of plate (z dimension)
 * \param[in]   TN       temperature at top boundary
 * \param[out]  aP       array of self coefficients
 * \param[out]  aW       array of west neighbor coefficients
 * \param[out]  aE       array of east neighbor coefficients
 * \param[out]  aS       array of south neighbor coefficients
 * \param[out]  aN       array of north neighbor coefficients
 * \param[out]  b        right-hand side array
 */
void fill_coeffs (int rowmax, int colmax, Real th_cond, Real dx, Real dy,
    Real width, Real TN, Real * aP, Real * aW, Real * aE,
    Real * aS, Real * aN, Real * b)
{
  int col, row;
  for (col = 0; col < colmax; ++col) {
    for (row = 0; row < rowmax; ++row) {
      int ind = col * rowmax + row;

      b[ind] = ZERO;
      Real SP = ZERO;

      if (col == 0) {
        // left BC: temp = 0
        aW[ind] = ZERO;
        SP = -TWO * th_cond * width * dy / dx;
      } else {
        aW[ind] = th_cond * width * dy / dx;
      }

      if (col == colmax - 1) {
        // right BC: temp = 0
        aE[ind] = ZERO;
        SP = -TWO * th_cond * width * dy / dx;
      } else {
        aE[ind] = th_cond * width * dy / dx;
      }

      if (row == 0) {
        // bottom BC: temp = 0
        aS[ind] = ZERO;
        SP = -TWO * th_cond * width * dx / dy;
      } else {
        aS[ind] = th_cond * width * dx / dy;
      }

      if (row == rowmax - 1) {
        // top BC: temp = TN
        aN[ind] = ZERO;
        b[ind] = TWO * th_cond * width * dx * TN / dy;
        SP = -TWO * th_cond * width * dx / dy;
      } else {
        aN[ind] = th_cond * width * dx / dy;
      }

      aP[ind] = aW[ind] + aE[ind] + aS[ind] + aN[ind] - SP;
    } // end for row
  } // end for col
} // end fill_coeffs

/** Function to update temperature for red cells
 *
 * \param[in]     aP          array of self coefficients
 * \param[in]     aW          array of west neighbor coefficients
 * \param[in]     aE          array of east neighbor coefficients
 * \param[in]     aS          array of south neighbor coefficients
 * \param[in]     aN          array of north neighbor coefficients
 * \param[in]     b           right-hand side array
 * \param[in]     temp_black  temperatures of black cells, constant in this function
 * \param[inout]  temp_red    temperatures of red cells
 * \param[out]    bl_norm_L2  array with residual information for blocks
 */
__global__
void red_kernel (const Real *__restrict__ aP,
                 const Real *__restrict__ aW,
                 const Real *__restrict__ aE,
                 const Real *__restrict__ aS,
                 const Real *__restrict__ aN,
                 const Real *__restrict__ b,
                 const Real *__restrict__ temp_black,
                       Real *__restrict__ temp_red,
                       Real *__restrict__ norm_L2)
{
  int row = 1 + (blockIdx.x * blockDim.x) + threadIdx.x;
  int col = 1 + (blockIdx.y * blockDim.y) + threadIdx.y;

  int ind_red = col * ((NUM >> 1) + 2) + row; // local (red) index
  int ind = 2 * row - (col & 1) - 1 + NUM * (col - 1); // global index

  Real temp_old = temp_red[ind_red];

  Real res = b[ind]
        + aW[ind] * temp_black[row + (col - 1) * ((NUM >> 1) + 2)]
        + aE[ind] * temp_black[row + (col + 1) * ((NUM >> 1) + 2)]
        + aS[ind] * temp_black[row - (col & 1) + col * ((NUM >> 1) + 2)]
        + aN[ind] * temp_black[row + ((col + 1) & 1) + col * ((NUM >> 1) + 2)];

  Real temp_new = temp_old * (ONE - omega) + omega * (res / aP[ind]);

  temp_red[ind_red] = temp_new;
  res = temp_new - temp_old;

  norm_L2[ind_red] = res * res;

} // end red_kernel

/** Function to update temperature for black cells
 *
 * \param[in]      aP          array of self coefficients
 * \param[in]      aW          array of west neighbor coefficients
 * \param[in]      aE          array of east neighbor coefficients
 * \param[in]      aS          array of south neighbor coefficients
 * \param[in]      aN          array of north neighbor coefficients
 * \param[in]      b           right-hand side array
 * \param[in]      temp_red    temperatures of red cells, constant in this function
 * \param[inout]   temp_black  temperatures of black cells
 * \param[out]     bl_norm_L2  array with residual information for blocks
 */
__global__
void black_kernel (const Real *__restrict__ aP,
                   const Real *__restrict__ aW,
                   const Real *__restrict__ aE,
                   const Real *__restrict__ aS,
                   const Real *__restrict__ aN,
                   const Real *__restrict__ b,
                   const Real *__restrict__ temp_red,
                         Real *__restrict__ temp_black,
                         Real *__restrict__ norm_L2)
{
  int row = 1 + (blockIdx.x * blockDim.x) + threadIdx.x;
  int col = 1 + (blockIdx.y * blockDim.y) + threadIdx.y;

  int ind_black = col * ((NUM >> 1) + 2) + row; // local (black) index
  int ind = 2 * row - ((col + 1) & 1) - 1 + NUM * (col - 1); // global index

  Real temp_old = temp_black[ind_black];

  Real res = b[ind]
        + aW[ind] * temp_red[row + (col - 1) * ((NUM >> 1) + 2)]
        + aE[ind] * temp_red[row + (col + 1) * ((NUM >> 1) + 2)]
        + aS[ind] * temp_red[row - ((col + 1) & 1) + col * ((NUM >> 1) + 2)]
        + aN[ind] * temp_red[row + (col & 1) + col * ((NUM >> 1) + 2)];

  Real temp_new = temp_old * (ONE - omega) + omega * (res / aP[ind]);

  temp_black[ind_black] = temp_new;
  res = temp_new - temp_old;

  norm_L2[ind_black] = res * res;
} // end black_kernel

/** Main function that solves Laplace's equation in 2D (heat conduction in plate)
 *
 * Contains iteration loop for red-black Gauss-Seidel with SOR GPU kernels
 */
int main (void) {

  // size of plate
  Real L = 1.0;
  Real H = 1.0;
  Real width = 0.01;

  // thermal conductivity
  Real th_cond = 1.0;

  // temperature at top boundary
  Real TN = 1.0;

  // SOR iteration tolerance
  Real tol = 1.e-6;

  // number of cells in x and y directions
  // including unused boundary cells
  int num_rows = (NUM / 2) + 2;
  int num_cols = NUM + 2;
  int size_temp = num_rows * num_cols;
  int size = NUM * NUM;

  // size of cells
  Real dx = L / NUM;
  Real dy = H / NUM;

  // iterations for Red-Black Gauss-Seidel with SOR
  int iter;
  int it_max = 1e6;

  // allocate memory
  Real *aP, *aW, *aE, *aS, *aN, *b;
  Real *temp_red, *temp_black;

  // arrays of coefficients
  aP = (Real *) calloc (size, sizeof(Real));
  aW = (Real *) calloc (size, sizeof(Real));
  aE = (Real *) calloc (size, sizeof(Real));
  aS = (Real *) calloc (size, sizeof(Real));
  aN = (Real *) calloc (size, sizeof(Real));

  // RHS
  b = (Real *) calloc (size, sizeof(Real));

  // temperature arrays
  temp_red = (Real *) calloc (size_temp, sizeof(Real));
  temp_black = (Real *) calloc (size_temp, sizeof(Real));

  // set coefficients
  fill_coeffs (NUM, NUM, th_cond, dx, dy, width, TN, aP, aW, aE, aS, aN, b);

  int i;
  for (i = 0; i < size_temp; ++i) {
    temp_red[i] = ZERO;
    temp_black[i] = ZERO;
  }

  // block and grid dimensions
  dim3 dimBlock (BLOCK_SIZE, 1);
  dim3 dimGrid (NUM / (2 * BLOCK_SIZE), NUM);

  // residual
  Real *bl_norm_L2;

  // one for each temperature value
  int size_norm = size_temp;
  bl_norm_L2 = (Real *) calloc (size_norm, sizeof(Real));

  // print problem info
  printf("Problem size: %d x %d \n", NUM, NUM);

  // allocate device memory
  Real *aP_d, *aW_d, *aE_d, *aS_d, *aN_d, *b_d;
  Real *temp_red_d;
  Real *temp_black_d;

  cudaMalloc ((void**) &aP_d, size * sizeof(Real));
  cudaMalloc ((void**) &aW_d, size * sizeof(Real));
  cudaMalloc ((void**) &aE_d, size * sizeof(Real));
  cudaMalloc ((void**) &aS_d, size * sizeof(Real));
  cudaMalloc ((void**) &aN_d, size * sizeof(Real));
  cudaMalloc ((void**) &b_d, size * sizeof(Real));
  cudaMalloc ((void**) &temp_red_d, size_temp * sizeof(Real));
  cudaMalloc ((void**) &temp_black_d, size_temp * sizeof(Real));

  // copy to device memory
  cudaMemcpy (aP_d, aP, size * sizeof(Real), cudaMemcpyHostToDevice);
  cudaMemcpy (aW_d, aW, size * sizeof(Real), cudaMemcpyHostToDevice);
  cudaMemcpy (aE_d, aE, size * sizeof(Real), cudaMemcpyHostToDevice);
  cudaMemcpy (aS_d, aS, size * sizeof(Real), cudaMemcpyHostToDevice);
  cudaMemcpy (aN_d, aN, size * sizeof(Real), cudaMemcpyHostToDevice);
  cudaMemcpy (b_d, b, size * sizeof(Real), cudaMemcpyHostToDevice);
  cudaMemcpy (temp_red_d, temp_red, size_temp * sizeof(Real), cudaMemcpyHostToDevice);
  cudaMemcpy (temp_black_d, temp_black, size_temp * sizeof(Real), cudaMemcpyHostToDevice);

  // residual
  Real *bl_norm_L2_d;
  cudaMalloc ((void**) &bl_norm_L2_d, size_norm * sizeof(Real));
  cudaMemcpy (bl_norm_L2_d, bl_norm_L2, size_norm * sizeof(Real), cudaMemcpyHostToDevice);

  cudaDeviceSynchronize();
  StartTimer();

  // iteration loop
  for (iter = 1; iter <= it_max; ++iter) {

    Real norm_L2 = ZERO;

    red_kernel <<<dimGrid, dimBlock>>> (aP_d, aW_d, aE_d, aS_d, aN_d, b_d, temp_black_d, temp_red_d, bl_norm_L2_d);

    // transfer residual value(s) back to CPU
    cudaMemcpy (bl_norm_L2, bl_norm_L2_d, size_norm * sizeof(Real), cudaMemcpyDeviceToHost);

    // add red cell contributions to residual
    for (int i = 0; i < size_norm; ++i) norm_L2 += bl_norm_L2[i];

    black_kernel <<<dimGrid, dimBlock>>> (aP_d, aW_d, aE_d, aS_d, aN_d, b_d, temp_red_d, temp_black_d, bl_norm_L2_d);

    // transfer residual value(s) back to CPU and
    cudaMemcpy (bl_norm_L2, bl_norm_L2_d, size_norm * sizeof(Real), cudaMemcpyDeviceToHost);

    // add black cell contributions to residual
    for (int i = 0; i < size_norm; ++i) norm_L2 += bl_norm_L2[i];

    // calculate residual
    norm_L2 = sqrt(norm_L2 / ((Real)size));

    if (iter % 1000 == 0) printf("%5d, %0.6f\n", iter, norm_L2);

    // if tolerance has been reached, end SOR iterations
    if (norm_L2 < tol) break;
  }

  double runtime = GetTimer();
  printf("Total time for %i iterations: %f s\n", iter, runtime / 1000.0);

  // transfer final temperature values back
  cudaMemcpy (temp_red, temp_red_d, size_temp * sizeof(Real), cudaMemcpyDeviceToHost);
  cudaMemcpy (temp_black, temp_black_d, size_temp * sizeof(Real), cudaMemcpyDeviceToHost);

  // print temperature data to file
  FILE * pfile;
  pfile = fopen("temperature.dat", "w");

  if (pfile != NULL) {
    fprintf(pfile, "#x\ty\ttemp(K)\n");

    int row, col;
    for (row = 1; row < NUM + 1; ++row) {
      for (col = 1; col < NUM + 1; ++col) {
        Real x_pos = (col - 1) * dx + (dx / 2);
        Real y_pos = (row - 1) * dy + (dy / 2);

        if ((row + col) % 2 == 0) {
          // even, so red cell
          int ind = col * num_rows + (row + (col % 2)) / 2;
          fprintf(pfile, "%f\t%f\t%f\n", x_pos, y_pos, temp_red[ind]);
        } else {
          // odd, so black cell
          int ind = col * num_rows + (row + ((col + 1) % 2)) / 2;
          fprintf(pfile, "%f\t%f\t%f\n", x_pos, y_pos, temp_black[ind]);
        }
      }
      fprintf(pfile, "\n");
    }
  }

  fclose(pfile);

  cudaFree(aP_d);
  cudaFree(aW_d);
  cudaFree(aE_d);
  cudaFree(aS_d);
  cudaFree(aN_d);
  cudaFree(b_d);
  cudaFree(temp_red_d);
  cudaFree(temp_black_d);
  cudaFree(bl_norm_L2_d);

  free(aP);
  free(aW);
  free(aE);
  free(aS);
  free(aN);
  free(b);
  free(temp_red);
  free(temp_black);
  free(bl_norm_L2);

  return 0;
}
