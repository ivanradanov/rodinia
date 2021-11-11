#ifndef __MY_VERIFIER_H_
#define __MY_VERIFIER_H_

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <omp.h>
#include <errno.h>

#define MY_VERIFY_INT(ARRAY_PTR, SIZE) MY_VERIFY(ARRAY_PTR, SIZE, int, 0)
#define MY_VERIFY_CHAR(ARRAY_PTR, SIZE) MY_VERIFY(ARRAY_PTR, SIZE, char, 0)
#define MY_VERIFY_FLOAT(ARRAY_PTR, SIZE) MY_VERIFY(ARRAY_PTR, SIZE, float, 0.001)
#define MY_VERIFY_DOUBLE(ARRAY_PTR, SIZE) MY_VERIFY(ARRAY_PTR, SIZE, double, 0.001)

#define S(x) #x
#define S_(x) S(x)
#define S__LINE__ S_(__LINE__)

#define MY_VERIFY(ARRAY_PTR, SIZE, TYPE, EPSILON)                       \
  do { \
    char *verification_dir = getenv("MY_VERIFICATION_DIR"); \
    if (verification_dir && strcmp(verification_dir, "")) { \
      char *halt_when_incorrect = getenv("MY_VERIFICATION_HALT_WHEN_INCORRECT"); \
      size_t size = (SIZE); \
      size_t type_size = sizeof(TYPE); \
      size_t array_size = type_size * size; \
      TYPE eps = (TYPE) (EPSILON); \
      char *array = (char *) (ARRAY_PTR); \
      const char *src_filename = strrchr(__FILE__, '/'); \
      if (!src_filename) \
        src_filename = __FILE__; \
      char verification_id[strlen(src_filename) + strlen(S__LINE__) + 2]; \
      sprintf(verification_id, "%s:%s", src_filename, S__LINE__); \
      char verification_file[strlen(verification_id) + strlen(verification_dir) + 2]; \
      sprintf(verification_file, "%s/%s", verification_dir, verification_id); \
      if (getenv("MY_VERIFICATION_DUMP")) { \
        FILE *f = fopen(verification_file, "wb"); \
        if (!f) { \
          fprintf(stderr, "Could not open file %s, errno %d, %s\n", verification_file, errno, strerror(errno)); \
          exit(1); \
        } \
        fwrite((void *) array, type_size, size, f); \
        fclose(f); \
      } else { \
        FILE *f = fopen(verification_file, "rb"); \
        if (!f) { \
          fprintf(stderr, "Could not open file %s, errno %d, %s\n", verification_file, errno, strerror(errno)); \
          exit(1); \
        } \
        void *data = malloc(array_size); \
        fread((void *) array, type_size, size, f); \
        for (TYPE *el = (TYPE *) array, *correct = (TYPE *) data; \
             el < ((TYPE *) array) + size;                         \
             el++, correct++) {              \
          if (!(*el - *correct >= eps && *correct - *el >= eps)) { \
            fprintf(stderr, "Verification failed at %s:%s\n", __FILE__, S__LINE__); \
            if (halt_when_incorrect) { \
              fprintf(stderr, "Halting\n"); \
              exit(1); \
            } \
          } \
        } \
        free(data); \
        fclose(f); \
      } \
    } \
  } while (0)

#endif // __MY_VERIFIER_H_
