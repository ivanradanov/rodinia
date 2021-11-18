#ifndef __MY_VERIFICATION_H_
#define __MY_VERIFICATION_H_

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <omp.h>
#include <errno.h>
#include <float.h>

#define MY_INT_EQ_PRINTER(a, b) fprintf(stderr, "%d != %d expected\n", (int)(a), (int)(b))
#define MY_FP_EQ_PRINTER(a, b) fprintf(stderr, "%.17g != %.17g expected\n", (a), (b))
#define MY_NULL_EQ_PRINTER(a, b) do {} while(0)

#define MY_DEVICE_VERIFY_INT(ARRAY_PTR, SIZE) MY_ON_DEVICE(MY_VERIFY_INT, ARRAY_PTR, SIZE, int)
#define MY_DEVICE_VERIFY_FLOAT(ARRAY_PTR, SIZE) MY_ON_DEVICE(MY_VERIFY_FLOAT_EXACT, ARRAY_PTR, SIZE, float)
#define MY_DEVICE_VERIFY_RAW(ARRAY_PTR, SIZE) MY_ON_DEVICE(MY_VERIFY_RAW, ARRAY_PTR, SIZE, char)

#define MY_ON_DEVICE(VERIFIER, ARRAY_PTR, SIZE, TYPE)                   \
	do { \
		void *host_mem = malloc(sizeof(TYPE) * SIZE); \
		cudaMemcpy(host_mem, ARRAY_PTR, sizeof(TYPE) * SIZE, cudaMemcpyDeviceToHost); \
		VERIFIER(host_mem, SIZE); \
		free(host_mem); \
	} while (0)

#define MY_VERIFY_INT(ARRAY_PTR, SIZE) MY_VERIFY(ARRAY_PTR, SIZE, int, MY_INT_STYLE_EQ, MY_INT_EQ_PRINTER, 0, 0, 0)
#define MY_VERIFY_RAW(ARRAY_PTR, SIZE) MY_VERIFY(ARRAY_PTR, SIZE, char, MY_INT_STYLE_EQ, MY_INT_EQ_PRINTER, 0, 0, 0)
#define MY_VERIFY_CHAR(ARRAY_PTR, SIZE) MY_VERIFY(ARRAY_PTR, SIZE, char, MY_INT_STYLE_EQ, MY_INT_EQ_PRINTER, 0, 0, 0)
#define MY_VERIFY_FLOAT_EXACT(ARRAY_PTR, SIZE)                          \
  MY_VERIFY(ARRAY_PTR, SIZE, float, MY_FP_STYLE_EQ, MY_FP_EQ_PRINTER, FLT_MIN, (FLT_EPSILON * 256), FLT_MAX)
#define MY_VERIFY_DOUBLE_EXACT(ARRAY_PTR, SIZE)                         \
  MY_VERIFY(ARRAY_PTR, SIZE, double, MY_FP_STYLE_EQ, MY_FP_EQ_PRINTER, DBL_MIN, (DBL_EPSILON * 256), DBL_MAX)

#define MY_S(x) #x
#define MY_S_(x) MY_S(x)
#define MY_S__LINE__ MY_S_(__LINE__)

#define MY_MIN(X, Y) (((X) > (Y)) ? (Y) : (X))
#define MY_MAX(X, Y) (((X) > (Y)) ? (X) : (Y))
#define MY_ABS(X) ((X) > 0 ? (X) : -(X))

#define MY_FP_STYLE_EQ(X, Y, ABS_TH, EPSILON, FP_MAX)                   \
  (((X) == (Y)) || (MY_ABS((X) - (Y)) < MY_MAX((ABS_TH), (EPSILON) * MY_MIN((MY_ABS(X) + MY_ABS(Y)), FP_MAX))))

#define MY_INT_STYLE_EQ(X, Y, ABS_TH, EPSILON, FP_MAX)                  \
  ((X) == (Y))

#define MY_VERIFY(ARRAY_PTR, SIZE, TYPE, EQ, EQ_PRINTER, ABS_TH, EPSILON, FP_MAX) \
  do { \
	  static int done = 0; \
	  if (done) break; else done = 1; \
    char *verification_dir = getenv("MY_VERIFICATION_DIR"); \
    if (verification_dir && strcmp(verification_dir, "")) { \
      char *halt_when_incorrect = getenv("MY_VERIFICATION_HALT_WHEN_INCORRECT"); \
      size_t size = (SIZE); \
      size_t type_size = sizeof(TYPE); \
      size_t array_size = type_size * size; \
      char *array = (char *) (ARRAY_PTR); \
      const char *src_filename = strrchr(__FILE__, '/'); \
      if (!src_filename) \
        src_filename = __FILE__; \
      char verification_id[strlen(src_filename) + strlen(MY_S__LINE__) + 2]; \
      sprintf(verification_id, "%s:%s", src_filename, MY_S__LINE__); \
      char verification_file[strlen(verification_id) + strlen(verification_dir) + 2]; \
      sprintf(verification_file, "%s/%s", verification_dir, verification_id); \
      if (getenv("MY_VERIFICATION_DUMP")) { \
        fprintf(stderr, "Dumping verification info of %s of type %s to file %s\n", #ARRAY_PTR, #TYPE, verification_file); \
        FILE *f = fopen(verification_file, "wb"); \
        if (!f) { \
          fprintf(stderr, "Could not open file %s, errno %d, %s\n", verification_file, errno, strerror(errno)); \
          exit(1); \
        } \
        fwrite((void *) array, type_size, size, f); \
        fclose(f); \
      } else { \
        fprintf(stderr, "Starting verification of %s of type %s from file %s\n", #ARRAY_PTR, #TYPE, verification_file); \
        FILE *f = fopen(verification_file, "rb"); \
        if (!f) { \
          fprintf(stderr, "Could not open file %s, errno %d, %s\n", verification_file, errno, strerror(errno)); \
          exit(1); \
        } \
        void *data = malloc(array_size); \
        fread((void *) data, type_size, size, f); \
        int pass = 1; \
        TYPE *el, *correct;                                \
        for (el = (TYPE *) array, correct = (TYPE *) data; \
             el < ((TYPE *) array) + size; \
             el++, correct++) { \
          if (!EQ(*el, *correct, ABS_TH, EPSILON, FP_MAX)) { \
            fprintf(stderr, "Verification of %s failed at %s:%s, el %d\n", #ARRAY_PTR, __FILE__, MY_S__LINE__, (int) ((TYPE*)el - (TYPE*)array)); \
            EQ_PRINTER(*el, *correct); \
            pass = 0; \
            if (halt_when_incorrect) { \
              fprintf(stderr, "Halting\n"); \
              exit(1); \
            } \
          } \
        } \
        fprintf(stderr, "Verification of %s ended, result: %s\n", #ARRAY_PTR, pass ? "PASS" : "FAIL"); \
        free(data); \
        fclose(f); \
      } \
    } \
  } while (0)

#endif // __MY_VERIFICATION_H_
