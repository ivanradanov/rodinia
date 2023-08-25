include ../../common/make.config

## C compiler
#CC = gcc
#CC_FLAGS = -g  -O2
#
## CUDA compiler
#NVCC = $(CUDA_DIR)/bin/nvcc
#NVCC_FLAGS = -I$(CUDA_DIR)/include
#
## 'make dbg=1' enables NVCC debugging
#ifeq ($(dbg),1)
#	NVCC_FLAGS += -g -O0
#else
#	NVCC_FLAGS += -O2
#endif
#
## 'make emu=1' compiles the CUDA kernels for emulation
#ifeq ($(emu),1)
#	NVCC_FLAGS += -deviceemu
#endif


backprop: backprop.o facetrain.o imagenet.o backprop_cuda.o
	$(LINKER) backprop.o facetrain.o imagenet.o backprop_cuda.o -o backprop $(LINKER_FLAGS)

%.o: %.[ch]
	$(CC) $(CC_FLAGS) $< -c -o $@

facetrain.o: facetrain.c backprop.h
	$(CC) $(CC_FLAGS) facetrain.c -c -o facetrain.o

backprop.o: backprop.c backprop.h
	$(CC) $(CC_FLAGS) backprop.c -c -o $@

backprop_cuda.o: backprop_cuda.cu backprop.h
	$(NVCC) $(NVCC_FLAGS) -c backprop_cuda.cu -o $@

imagenet.o: imagenet.c backprop.h
	$(CC) $(CC_FLAGS) imagenet.c -c -o $@


clean:
	rm -f *.o *~ backprop backprop_cuda.linkinfo
