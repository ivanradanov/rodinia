include ../../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n

# link objects(binaries) together
srad:		main.o
	$(NVCC)	main.o -o srad $(NVCC_FLAGS)

# compile main function file into object (binary)
main.o: 	main.cu \
				define.c \
				graphics.c \
				extract_kernel.cu \
				prepare_kernel.cu \
				reduce_kernel.cu \
				srad_kernel.cu \
				srad2_kernel.cu \
				compress_kernel.cu
	$(NVCC) -c main.cu -o main.o $(NVCC_FLAGS)

# delete all object files
clean:
	rm *.o srad
