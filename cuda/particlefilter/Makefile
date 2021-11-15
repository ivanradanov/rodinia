#makefile

include ../../common/make.config

CC := $(NVCC)


all: naive float

naive: particlefilter_naive
particlefilter_naive: ex_particle_CUDA_naive_seq.cu
	$(CC) ex_particle_CUDA_naive_seq.cu -o particlefilter_naive $(NVCC_FLAGS)

float: particlefilter_float
particlefilter_float: ex_particle_CUDA_float_seq.cu
	$(CC) ex_particle_CUDA_float_seq.cu -o particlefilter_float $(NVCC_FLAGS)

clean:
	rm particlefilter_naive particlefilter_float
