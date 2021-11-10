include ../../common/openmp.make.config
LOCAL_CC = gcc -g -O3 -Wall
CC = gcc
CFLAGS = -lm -fopenmp -Wall


all : nn

clean :
	rm -rf *.o nn

nn : nn_openmp.c
	$(CC) -o $@ $< $(LDFLAGS) $(CFLAGS)  $(MY_ADDITIONAL_FLAGS)

hurricane_gen : hurricane_gen.c
	$(LOCAL_CC) -o $@ $< -lm $(MY_ADDITIONAL_FLAGS)

