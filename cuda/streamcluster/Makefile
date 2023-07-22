include ../../common/make.config

EXECUTABLE := sc_gpu
CFILES :=
CXXFILES := streamcluster_cuda_cpu.cpp
CUFILES := streamcluster_cuda.cu #streamcluster_header.cu
COBJS=$(CFILES:.c=.c.o)
CXXOBJS=$(CXXFILES:.cpp=.cpp.o)
CUOBJS=$(CUFILES:.cu=.cu.o)

OUTPUT =

.SUFFIXES: .c.o .cpp.o .cu.o .cu

%.c.o: %.c
	$(CC) $(OUTPUT) $(CC_FLAGS) -c $< -o $@

%.cu.o: %.cu
	$(NVCC) $(OUTPUT) $(NVCC_FLAGS) -c $< -o $@

%.cpp.o: %.cpp
	$(CXX) $(OUTPUT) $(CXX_FLAGS) -c $< -o $@

$(EXECUTABLE): $(COBJS) $(CXXOBJS) $(CUOBJS)
	$(LINKER) -o $(EXECUTABLE) $(COBJS) $(CXXOBJS) $(CUOBJS) $(LINKER_FLAGS)

clean:
	rm -f $(COBJS) $(CXXOBJS) $(CUOBJS) $(EXECUTABLE)

