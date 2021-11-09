#ifndef __MY_TIMING_H_
#define __MY_TIMING_H_

#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define MY_START_CLOCK(CLOCK_ID) \
	double ___my_clock_start##CLOCK_ID; \
	double ___my_clock_end##CLOCK_ID; \
	struct timespec ___my_clock_tmp##CLOCK_ID; \
	clock_gettime(CLOCK_MONOTONIC, &___my_clock_tmp##CLOCK_ID); \
	___my_clock_start##CLOCK_ID = (___my_clock_tmp##CLOCK_ID.tv_sec + ((double) ___my_clock_tmp##CLOCK_ID.tv_nsec) * .000000001)

#define MY_STOP_CLOCK(CLOCK_ID) \
  do { \
    cudaDeviceSynchronize(); \
    clock_gettime(CLOCK_MONOTONIC, &___my_clock_tmp##CLOCK_ID); \
    ___my_clock_end##CLOCK_ID = (___my_clock_tmp##CLOCK_ID.tv_sec + ((double) ___my_clock_tmp##CLOCK_ID.tv_nsec) * .000000001); \
    double ___my_clock_elapsed##CLOCK_ID = ___my_clock_start##CLOCK_ID - ___my_clock_end##CLOCK_ID; \
    MY_WRITE_TIME_TO_FILE(#CLOCK_ID, ___my_clock_elapsed##CLOCK_ID); \
  } while (0)

inline void MY_WRITE_TIME_TO_FILE(const char *clock_id, double elapsed) {
	char *output = getenv("MY_TIMING_FILE");
	if (*output == '\0')
		return;

	FILE *f = fopen(output, "a");
	if (!f) {
		printf("could not open timing file %s\n", output);
	}

	fprintf(f, "%s, %f\n", clock_id, elapsed);
}

#endif // __MY_TIMING_H_
