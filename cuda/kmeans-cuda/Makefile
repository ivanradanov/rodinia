include ../../common/make.config
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

# Standard flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14


# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif

all: kmeans

kmeans: cluster.o getopt.o read_input.o rmse.o kmeans.cpp
	$(LINKER) $(KERNEL_DIM) $^ -o kmeans $(LINKER_FLAGS)

%.o: %.cpp
	$(CXX) $(HEC_NVCC_FLAGS) $< -c

cluster.o: cluster.cu kmeans.h
	$(NVCC) $(HEC_NVCC_FLAGS) cluster.cu -c

getopt.o: getopt.cpp getopt.h

read_input.o: read_input.cpp kmeans.h

rmse.o: rmse.cpp kmeans.h

clean:
	rm -f *.o *~ kmeans *.linkinfo

run: kmeans
	./kmeans -r -n 5 -m 15 -l 10 -o -i ../data/kmeans/kdd_cup
run_no_build:
	./kmeans -r -n 5 -m 15 -l 10 -o -i ../data/kmeans/kdd_cup


