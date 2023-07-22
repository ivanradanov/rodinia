include ../../common/make.config


CUDA_INCLUDEPATH=/usr/local/cuda-6.5/include

NVCC_OPTS := $(NVCC_FLAGS)

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
	$(NVCC) $(TESTING) $(NVCC_FLAGS) -c vlc_kernel_sm64huff.cu -o $@

scan.o: scan.cu 
	$(NVCC) $(NVCC_FLAGS) -c scan.cu -o $@

cpuencode.o: cpuencode.cpp
	$(CXX) $(CXX_FLAGS) -c cpuencode.cpp

main_test_cu.o: main_test_cu.cu
	$(NVCC) $(NVCC_FLAGS) -c main_test_cu.cu -o $@

pack_kernels.o: pack_kernels.cu 
	$(NVCC) $(NVCC_FLAGS) -c pack_kernels.cu -o $@

stats_logger.o: stats_logger.cpp 
	$(CXX) $(CXX_FLAGS) -c stats_logger.cpp -o $@

.o:.cpp
	$(CXX) ++ -c -o $@ $(GCC_OPTS) $<

clean:
	rm -f *.o $(EXE) 
