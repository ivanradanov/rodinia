#ifndef __MY_TIMING_H_
#define __MY_TIMING_H_

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <omp.h>
#include <errno.h>


#ifdef _MY_IS_OPENMP
#define CUDA_DEVICE_SYNCHRONIZE do { } while(0)
#elif defined _MY_IS_HIP
#define CUDA_DEVICE_SYNCHRONIZE hipDeviceSynchronize()
#else
#define CUDA_DEVICE_SYNCHRONIZE cudaDeviceSynchronize()
#endif

#define MY_START_CLOCK(APP_ID, CLOCK_ID)                                \
  struct timespec ___my_clock_start##CLOCK_ID; \
  struct timespec ___my_clock_end##CLOCK_ID; \
  CUDA_DEVICE_SYNCHRONIZE; \
  clock_gettime(CLOCK_MONOTONIC, &___my_clock_start##CLOCK_ID)

#define MY_STOP_CLOCK(APP_ID, CLOCK_ID)                                 \
  do { \
    CUDA_DEVICE_SYNCHRONIZE; \
    static int done = 0; \
    if (done) break; else done = 1; \
    clock_gettime(CLOCK_MONOTONIC, &___my_clock_end##CLOCK_ID); \
    struct timespec ___my_clock_tmp##CLOCK_ID = \
      {___my_clock_end##CLOCK_ID.tv_sec - ___my_clock_start##CLOCK_ID.tv_sec, \
       ___my_clock_end##CLOCK_ID.tv_nsec - ___my_clock_start##CLOCK_ID.tv_nsec}; \
    double ___my_clock_elapsed##CLOCK_ID = (___my_clock_tmp##CLOCK_ID.tv_sec + ((double) ___my_clock_tmp##CLOCK_ID.tv_nsec) * .000000001); \
    MY_WRITE_TIME_TO_FILE(#APP_ID, #CLOCK_ID, ___my_clock_elapsed##CLOCK_ID); \
  } while (0)

static inline void MY_WRITE_TIME_TO_FILE(const char *app_id, const char *clock_id, double elapsed) {
  char *output = getenv("MY_TIMING_FILE");

  FILE *f;
  if (output == NULL || strcmp(output, "") == 0 || strcmp(output, "-") == 0)
    f = stdout;
  else
    f = fopen(output, "a");
  if (!f) {
    fprintf(stderr, "Could not open timing file %s, errno %d, %s\n", output, errno, strerror(errno));
    exit(1);
  }

  char empty[1] = "";

  char *hostname = getenv("HOSTNAME");
  if (!hostname)
    hostname = empty;

  int omp_threads = omp_get_max_threads();

#ifdef _MY_COMPILER_NAME_
  const char *compilername = _MY_COMPILER_NAME_;
#else
  const char *compilername = "unidetified_compiler";
#endif

  fprintf(f, "%s,%s,%.17g,%s,%s,%d,\n", app_id, clock_id, elapsed, hostname, compilername, omp_threads);

  if (f != stdout && f != stderr)
    fclose(f);
}

#endif // __MY_TIMING_H_
