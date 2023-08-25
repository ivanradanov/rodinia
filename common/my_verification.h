#ifndef __MY_VERIFICATION_H_
#define __MY_VERIFICATION_H_

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <omp.h>
#include <errno.h>
#include <float.h>
#include <sys/stat.h>

// #define MY_VERIFICATION_DISABLE to disable verification code

#define MY_FP_STYLE_EQ(X, Y, ABS_TH, EPSILON, FP_MAX)                   \
  (((X) == (Y)) || (MY_ABS((X) - (Y)) < MY_MAX((ABS_TH), (EPSILON) * MY_MIN((MY_ABS(X) + MY_ABS(Y)), FP_MAX))))

#define MY_INT_STYLE_EQ(X, Y, ABS_TH, EPSILON, FP_MAX)                  \
  ((X) == (Y))

#define MY_DEVICE_VERIFY_INT(ARRAY_PTR, SIZE)                           \
  _MY_DEVICE_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), int, MY_INT_STYLE_EQ, "%d", 0, 0, 0)
#define MY_DEVICE_VERIFY_RAW(ARRAY_PTR, SIZE)                           \
  _MY_DEVICE_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), char, MY_INT_STYLE_EQ, "%d", 0, 0, 0)
#define MY_DEVICE_VERIFY_CHAR(ARRAY_PTR, SIZE)                          \
  _MY_DEVICE_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), char, MY_INT_STYLE_EQ, "%d", 0, 0, 0)
#define MY_DEVICE_VERIFY_FLOAT(ARRAY_PTR, SIZE)                         \
  _MY_DEVICE_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), float, MY_FP_STYLE_EQ, "%.9g", FLT_MIN, (FLT_EPSILON * 256), FLT_MAX)
#define MY_DEVICE_VERIFY_DOUBLE(ARRAY_PTR, SIZE)                        \
  _MY_DEVICE_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), double, MY_FP_STYLE_EQ, "%.17g", DBL_MIN, (DBL_EPSILON * 256), DBL_MAX)
#define MY_DEVICE_VERIFY_FLOAT_CUSTOM(ARRAY_PTR, SIZE, C1, C2)          \
  _MY_DEVICE_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), float, MY_FP_STYLE_EQ, "%.9g", C1, (C2 * FLT_EPSILON * 256), FLT_MAX)
#define MY_DEVICE_VERIFY_DOUBLE_CUSTOM(ARRAY_PTR, SIZE, C1, C2)         \
  _MY_DEVICE_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), double, MY_FP_STYLE_EQ, "%.17g", C1, (C2 * DBL_EPSILON * 256), DBL_MAX)

#define MY_VERIFY_INT(ARRAY_PTR, SIZE)                                  \
  _MY_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), int, MY_INT_STYLE_EQ, "%d", 0, 0, 0)
#define MY_VERIFY_RAW(ARRAY_PTR, SIZE)                                  \
  _MY_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), char, MY_INT_STYLE_EQ, "%d", 0, 0, 0)
#define MY_VERIFY_CHAR(ARRAY_PTR, SIZE)                                 \
  _MY_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), char, MY_INT_STYLE_EQ, "%d", 0, 0, 0)
#define MY_VERIFY_FLOAT_CUSTOM(ARRAY_PTR, SIZE, C1, C2)                 \
  _MY_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), float, MY_FP_STYLE_EQ, "%.9g", C1, (C2 * FLT_EPSILON * 256), FLT_MAX)
#define MY_VERIFY_FLOAT_EXACT(ARRAY_PTR, SIZE)                          \
  _MY_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), float, MY_FP_STYLE_EQ, "%.9g", FLT_MIN, (FLT_EPSILON * 256), FLT_MAX)
#define MY_VERIFY_DOUBLE_CUSTOM(ARRAY_PTR, SIZE, C1, C2)                \
  _MY_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), double, MY_FP_STYLE_EQ, "%.17g", C1, (C2 * DBL_EPSILON * 256), DBL_MAX)
#define MY_VERIFY_DOUBLE_EXACT(ARRAY_PTR, SIZE)                         \
  _MY_VERIFY(ARRAY_PTR, #ARRAY_PTR, (SIZE), double, MY_FP_STYLE_EQ, "%.17g", DBL_MIN, (DBL_EPSILON * 256), DBL_MAX)

#ifdef _MY_IS_HIP
#define _MY_GPU_MEMCPY(HOST_MEM, ARRAY_PTR, TYPE, SIZE) hipMemcpy((HOST_MEM), (ARRAY_PTR), sizeof(TYPE) * (SIZE), hipMemcpyDeviceToHost)
#else
#define _MY_GPU_MEMCPY(HOST_MEM, ARRAY_PTR, TYPE, SIZE) cudaMemcpy((HOST_MEM), (ARRAY_PTR), sizeof(TYPE) * (SIZE), cudaMemcpyDeviceToHost)
#endif

#ifdef MY_VERIFICATION_DISABLE
#define _MY_DEVICE_VERIFY(ARRAY_PTR, ARRAY_NAME, SIZE, TYPE, EQ, TYPE_PRINTF_SPECIFIER, ABS_TH, EPSILON, FP_MAX) \
  do {} while (0)
#else
#define _MY_DEVICE_VERIFY(ARRAY_PTR, ARRAY_NAME, SIZE, TYPE, EQ, TYPE_PRINTF_SPECIFIER, ABS_TH, EPSILON, FP_MAX) \
  do { \
    void *host_mem = malloc(sizeof(TYPE) * (SIZE)); \
    _MY_GPU_MEMCPY(host_mem, (ARRAY_PTR), TYPE, (SIZE)); \
    _MY_VERIFY(host_mem, ARRAY_NAME, (SIZE), TYPE, EQ, TYPE_PRINTF_SPECIFIER, ABS_TH, EPSILON, FP_MAX); \
    free(host_mem); \
  } while (0)
#endif

#define MY_S(x) #x
#define MY_S_(x) MY_S(x)
#define MY_S__LINE__ MY_S_(__LINE__)

#define MY_MIN(X, Y) (((X) > (Y)) ? (Y) : (X))
#define MY_MAX(X, Y) (((X) > (Y)) ? (X) : (Y))
#define MY_ABS(X) ((X) > 0 ? (X) : -(X))

#ifdef MY_VERIFICATION_DISABLE
#define _MY_VERIFY(ARRAY_PTR, ARRAY_NAME, SIZE, TYPE, EQ, TYPE_PRINTF_SPECIFIER, ABS_TH, EPSILON, FP_MAX) \
  do {} while (0)
#else
#define _MY_VERIFY(ARRAY_PTR, ARRAY_NAME, SIZE, TYPE, EQ, TYPE_PRINTF_SPECIFIER, ABS_TH, EPSILON, FP_MAX) \
  do { \
    static int done = 0; \
    if (done) break; else done = 1; \
    char *verification_dir = getenv("MY_VERIFICATION_DIR"); \
    if (verification_dir && strcmp(verification_dir, "")) { \
      char *halt_when_incorrect = getenv("MY_VERIFICATION_HALT_WHEN_INCORRECT"); \
      size_t __my_size = (SIZE); \
      size_t __my_type_size = sizeof(TYPE); \
      size_t __my_array_size = __my_type_size * __my_size; \
      TYPE *__my_array = (TYPE *)(ARRAY_PTR); \
      const char *src_filename = strrchr(__FILE__, '/'); \
      if (!src_filename) \
        src_filename = __FILE__; \
      char *app_name = getenv("MY_APP_NAME"); \
      char empty[1] = ""; \
      if (!app_name) { \
        fprintf(stderr, "MY_APP_NAME not defined, using empty string\n"); \
        app_name = empty; \
      } \
      char *verification_id = (char *) malloc(strlen(src_filename) + strlen(MY_S__LINE__) + 2); \
      sprintf(verification_id, "%s:%s", src_filename, MY_S__LINE__); \
      char *verification_file = (char *) malloc(strlen(verification_id) + strlen(verification_dir) + strlen(app_name) + 3); \
      sprintf(verification_file, "%s/%s/%s", verification_dir, app_name, verification_id); \
      char *verification_app_dir = (char *) malloc(strlen(verification_dir) + strlen(app_name) + 2); \
      sprintf(verification_app_dir, "%s/%s", verification_dir, app_name); \
      if (getenv("MY_VERIFICATION_DUMP")) { \
        mkdir(verification_app_dir, 0777); \
        fprintf(stderr, "Dumping verification info of %s of type %s to file %s\n", ARRAY_NAME, #TYPE, verification_file); \
        FILE *f = fopen(verification_file, "wb"); \
        if (!f) { \
          fprintf(stderr, "Could not open file %s, errno %d, %s\n", verification_file, errno, strerror(errno)); \
          exit(1); \
        } \
        fwrite((void *) __my_array, __my_type_size, __my_size, f); \
        fclose(f); \
      } else { \
        fprintf(stderr, "Starting verification of %s of type %s from file %s\n", ARRAY_NAME, #TYPE, verification_file); \
        FILE *f = fopen(verification_file, "rb"); \
        if (!f) { \
          fprintf(stderr, "Could not open file %s, errno %d, %s\n", verification_file, errno, strerror(errno)); \
          exit(1); \
        } \
        void *data = malloc(__my_array_size); \
        fread((void *) data, __my_type_size, __my_size, f); \
        int pass = 1; \
        TYPE *el, *correct; \
        double largest_absolute_error = 0, largest_relative_error = 0, largest_relative_error_nonzero = 0; \
        for (el = (TYPE *) __my_array, correct = (TYPE *) data; \
             el < ((TYPE *) __my_array) + __my_size; \
             el++, correct++) { \
          if (!EQ(*el, *correct, ABS_TH, EPSILON, FP_MAX)) { \
            double relative_error_nonzero = (*el <= ABS_TH || *correct <= ABS_TH) ? \
              0 : ((double) MY_ABS(*el - *correct)) / (MY_ABS(*el) + MY_ABS(*correct)); \
            largest_relative_error_nonzero = MY_MAX(relative_error_nonzero, largest_relative_error_nonzero); \
            double relative_error = ((double) MY_ABS(*el - *correct)) / (MY_ABS(*el) + MY_ABS(*correct)); \
            largest_relative_error = MY_MAX(relative_error, largest_relative_error); \
            double absolute_error = MY_ABS(*el - *correct); \
            largest_absolute_error = MY_MAX(absolute_error, largest_absolute_error); \
            fprintf(stderr, "Verification of %s failed at %s:%s, el %d\n", ARRAY_NAME, __FILE__, MY_S__LINE__, (int) ((TYPE*)el - (TYPE*)__my_array)); \
            fprintf(stderr, TYPE_PRINTF_SPECIFIER " != " TYPE_PRINTF_SPECIFIER " expected\n", *el, *correct); \
            fprintf(stderr, "relative error: %.17g, between non-zero: %.17g, absolute_error: %.17g\n", relative_error, relative_error_nonzero, absolute_error); \
            pass = 0; \
            if (halt_when_incorrect) { \
              fprintf(stderr, "result: FAIL\n"); \
              fprintf(stderr, "Halting\n"); \
              exit(1); \
            } \
          } \
        } \
        const char *pass_string; \
        if (pass) pass_string = "PASS"; \
        else pass_string = "FAIL"; \
        fprintf(stderr, "Verification of %s ended\nresult: %s\nlargest absolute error: %.17g\nlargest relative error: %.17g\nlargest relative error (between non-zero): %.17g\n", ARRAY_NAME, pass_string, largest_absolute_error, largest_relative_error, largest_relative_error_nonzero); \
        free(data); \
        fclose(f); \
      } \
      free(verification_id); \
      free(verification_file); \
      free(verification_app_dir); \
    } \
  } while (0)
#endif

#endif // __MY_VERIFICATION_H_
