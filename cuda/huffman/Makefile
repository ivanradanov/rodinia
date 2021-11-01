include ../../common/make.config


CUDA_INCLUDEPATH=/usr/local/cuda-6.5/include

NVCC_OPTS = $(NVCC_FLAGS)

GCC_OPTS = $(CC_FLAGS)

OBJ = main_test_cu.o stats_logger.o vlc_kernel_sm64huff.o scan.o pack_kernels.o cpuencode.o
SRC = main_test_cu.cu
EXE = pavle

ifdef TESTING 
override TESTING = -DTESTING
endif

ifdef CACHECWLUT
override TESTING = -DCACHECWLUT
endif

pavle: $(OBJ) 
	$(NVCC) $(TESTING) $(CACHECWLUT) $(OBJ) -o $(EXE) $(NVCC_OPTS) 

vlc_kernel_sm64huff.o: vlc_kernel_sm64huff.cu 
	$(NVCC) $(TESTING) -c vlc_kernel_sm64huff.cu $(NVCC_OPTS)

scan.o: scan.cu 
	$(NVCC) -c scan.cu $(NVCC_OPTS)

#cpuencode.o: cpuencode.cu
#	$(NVCC) -c $(NVCC_OPTS) cpuencode.cu

pack_kernels.o: pack_kernels.cu 
	$(NVCC) -c pack_kernels.cu $(NVCC_OPTS)

main_test_cu.o: main_test_cu.cu cutil.h
	$(NVCC) $(TESTING) -c main_test_cu.cu $(NVCC_OPTS) 

.o:.cpp
	$(CXX) ++ -c $@ -o $(GCC_OPTS) $<

clean:
	rm -f *.o $(EXE) 
