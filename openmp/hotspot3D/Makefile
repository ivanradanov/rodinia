include ../../common/openmp.make.config

CC = gcc
CCFLAGS = -g -fopenmp -O3
OUTPUT = *.out

3D: 3D.c
	$(CC) -o 3D $(CCFLAGS) 3D.c -lm $(MY_ADDITIONAL_FLAGS)

clean:
	rm -f 3D $(OUTPUT)
