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

pavle: $(OBJ)  main_test_cu.o cpuencode.o
	$(LINKER) $(TESTING) $(CACHECWLUT) cpuencode.o main_test_cu.o $(OBJ) -o $(EXE) $(LINKER_FLAGS)

vlc_kernel_sm64huff.o: vlc_kernel_sm64huff.cu 
	$(NVCC) $(TESTING) -c vlc_kernel_sm64huff.cu $(NVCC_OPTS) -o $@

scan.o: scan.cu 
	$(NVCC) -c scan.cu $(NVCC_OPTS) -o $@

cpuencode.o: cpuencode.cpp
	$(CXX) -c $(CXX_FLAGS) cpuencode.cpp

main_test_cu.o: main_test_cu.cu
	$(NVCC) -c main_test_cu.cu $(NVCC_OPTS) -o $@

pack_kernels.o: pack_kernels.cu 
	$(NVCC) -c pack_kernels.cu $(NVCC_OPTS) -o $@

.o:.cpp
	$(CXX) ++ -c -o $@ $(GCC_OPTS) $<

clean:
	rm -f *.o $(EXE) 
