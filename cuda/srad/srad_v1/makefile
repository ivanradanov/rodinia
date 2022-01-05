include ../../../common/make.config

CC := $(NVCC)

INCLUDE := $(CUDA_DIR)/include

# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n


# compile main function file into object (binary)
srad: 	main.cu \
				define.c \
				graphics.c \
				extract_kernel.cu \
				prepare_kernel.cu \
				reduce_kernel.cu \
				srad_kernel.cu \
				srad2_kernel.cu \
				compress_kernel.cu
	$(NVCC) main.cu -o srad $(NVCC_FLAGS) $(LINKER_FLAGS)

# delete all object files
clean:
	rm *.o srad
