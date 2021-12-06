include ../../../common/openmp.make.config

# C compiler
CC = g++
CC_FLAGS = -g -fopenmp -O2

bfs: 
	$(CC) $(CC_FLAGS) srad.cpp -o srad  $(MY_ADDITIONAL_FLAGS)

clean:
	rm -f srad
