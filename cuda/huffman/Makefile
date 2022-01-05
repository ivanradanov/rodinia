include ../../common/make.config


CUDA_INCLUDEPATH=/usr/local/cuda-6.5/include

NVCC_OPTS = $(NVCC_FLAGS)

GCC_OPTS = $(CC_FLAGS)

OBJ = stats_logger.o vlc_kernel_sm64huff.o scan.o pack_kernels.o
EXE = pavle

ifdef TESTING 
override TESTING = -DTESTING
endif

ifdef CACHECWLUT
override TESTING = -DCACHECWLUT
endif

pavle: $(OBJ)  main_test_cu.cu cutil.h
	$(NVCC) $(TESTING) $(CACHECWLUT) cpuencode.cpp main_test_cu.cu $(OBJ) -o $(EXE) $(NVCC_OPTS) $(LINKER_FLAGS) -lstdc++

vlc_kernel_sm64huff.o: vlc_kernel_sm64huff.cu 
	$(NVCC) $(TESTING) -c vlc_kernel_sm64huff.cu $(NVCC_OPTS) -o $@

scan.o: scan.cu 
	$(NVCC) -c scan.cu $(NVCC_OPTS) -o $@

#cpuencode.o: cpuencode.cu
#	$(NVCC) -c $(NVCC_OPTS) cpuencode.cu

pack_kernels.o: pack_kernels.cu 
	$(NVCC) -c pack_kernels.cu $(NVCC_OPTS) -o $@

.o:.cpp
	$(CXX) ++ -c -o $@ $(GCC_OPTS) $<

clean:
	rm -f *.o $(EXE) 
