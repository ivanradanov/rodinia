/**
 * @file saxpy.c
 *
 * @mainpage saxpy
 *
 * @author Xin Wu (PC²)
 * @date 05.04.2020
 * @copyright CC BY-SA 2.0
 *
 * saxpy performs the \c saxpy operation on host as well as accelerator.
 * The performance (in MB/s) for different implementations is also compared.
 *
 * The \c saxpy operation is defined as:
 *
 * y := a * x + y
 *
 * where:
 *
 * - a is a scalar.
 * - x and y are single-precision vectors each with n elements.
 */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <omp.h>
#include "hsaxpy.h"
#include "asaxpy.h"
#include "check1ns.h"
#include "wtcalc.h"

#define TWO26 (1 << 26)
#define NLUP  (32)

/**
 * @brief Main entry point for saxpy.
 */
int main(int argc, char *argv[])
{
  int    i, n,
         iret,
         ial;
  size_t nbytes;
  float  a = 2.0f,
         *x, *y,
         *yhost,
         *yaccl,
         maxabserr;
  struct timespec rt[2];
  double wt; // walltime

  /*
   * We need 1 ns time resolution.
   */
  check1ns();
  printf("The system supports 1 ns time resolution\n");
  /*
   * check the number of accelerators
   */
  if (0 == omp_get_num_devices()) {
    printf("No accelerator found ... exit\n");
    exit(EXIT_FAILURE);
  }
  /*
   * preparation
   */
  n      = TWO26;
  nbytes = sizeof(float) * n;
  iret   = 0;
  if (NULL == (x     = (float *) malloc(nbytes))) iret = -1;
  if (NULL == (y     = (float *) malloc(nbytes))) iret = -1;
  if (NULL == (yhost = (float *) malloc(nbytes))) iret = -1;
  if (NULL == (yaccl = (float *) malloc(nbytes))) iret = -1;
  if (0 != iret) {
    printf("error: memory allocation\n");
    free(x);     free(y);
    free(yhost); free(yaccl);
    exit(EXIT_FAILURE);
  }
  #pragma omp parallel for default(none) \
  shared(a, x, y, yhost, yaccl, n) private(i)
  for (i = 0; i < n; ++i) {
    x[i]     = rand() % 32 / 32.0f;
    y[i]     = rand() % 32 / 32.0f;
    yhost[i] = a * x[i] + y[i]; // yhost will be used as reference value
    yaccl[i] = 0.0f;
  }
  printf("total size of x and y is %9.1f MB\n", 2.0 * nbytes / (1 << 20));
  printf("tests are averaged over %2d loops\n", NLUP);
  /*
   * saxpy on host
   */
  /*
   * See hsaxpy.c for details:
   */
  memcpy(yaccl, y, nbytes);
  wtcalc = -1.0;
  // skip 1st run for timing
  hsaxpy(n, a, x, yaccl);
  // check yaccl
  maxabserr = -1.0f;
  for (i = 0; i < n; ++i) {
    maxabserr = fabsf(yaccl[i] - yhost[i]) > maxabserr?
                fabsf(yaccl[i] - yhost[i]) : maxabserr;
  }
  // skip 2nd run for timing
  hsaxpy(n, a, x, yaccl);
  // timing : start
  wtcalc = 0.0;
  clock_gettime(CLOCK_REALTIME, rt + 0);
  for (int ilup = 0; ilup < 1; ++ilup) {
    hsaxpy(n, a, x, yaccl);
  }
  clock_gettime(CLOCK_REALTIME, rt + 1);
  wt=(rt[1].tv_sec - rt[0].tv_sec) + 1.0e-9 * (rt[1].tv_nsec - rt[0].tv_nsec);
  printf("saxpy on host: %9.1f MB/s %9.1f MB/s maxabserr = %9.1f\n",
         3.0 * nbytes / ((1 << 20) * wt),
         3.0 * nbytes / ((1 << 20) * wtcalc), maxabserr);
  
  /*
   * saxpy on accl
   */
  for (ial = 0; ial < 6; ++ial) {
    /*
     * See asaxpy.c for details:
     *
     * ial:
     *
     * 0: <<<2^7 , 2^7 >>>, auto   scheduling
     * 1: <<<2^16, 2^10>>>, manual scheduling
     * 2: <<<2^15, 2^7 >>>, manual scheduling, 16x loop unrolling (2^15*2^7*16==2^26)
     * 3: <<<2^12, 2^7 >>>, auto   scheduling, 16x loop unrolling
     * 4: de-linearize the vector and then collapse the ji-loop.
     * otherwise: cublasSaxpy in CUBLAS
     */
    memcpy(yaccl, y, nbytes);
    wtcalc = -1.0;
    // skip 1st run for timing
    asaxpy(n, a, x, yaccl, ial);
    // check yaccl
    maxabserr = -1.0f;
    for (i = 0; i < n; ++i) {
      maxabserr = fabsf(yaccl[i] - yhost[i]) > maxabserr?
                  fabsf(yaccl[i] - yhost[i]) : maxabserr;
    }
    // skip 2nd run for timing
    asaxpy(n, a, x, yaccl, ial);
    // timing : start
    wtcalc = 0.0;
    clock_gettime(CLOCK_REALTIME, rt + 0);
    for (int ilup = 0; ilup < NLUP; ++ilup) {
      asaxpy(n, a, x, yaccl, ial);
    }
    clock_gettime(CLOCK_REALTIME, rt + 1);
    wt=(rt[1].tv_sec - rt[0].tv_sec) + 1.0e-9 * (rt[1].tv_nsec - rt[0].tv_nsec);
    printf("saxpy on accl (impl. %d)\ntotal: %9.1f MB/s kernel: %9.1f MB/s maxabserr = %9.1f\n\n",
        ial, NLUP * 3.0 * nbytes / ((1 << 20) * wt),
             NLUP * 3.0 * nbytes / ((1 << 20) * wtcalc), maxabserr);
  }
  /*
   * release memory
   */
  free(x);     free(y);
  free(yhost); free(yaccl);
  return 0;
}
