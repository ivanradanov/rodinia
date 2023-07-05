CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

# Standard flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall


# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

all: kmeans

kmeans: cluster.o getopt.o read_input.o rmse.o kmeans.cpp
	$(LINKER) $(KERNEL_DIM) $^ -o kmeans $(LINKER_FLAGS)

%.o: %.cpp
	$(CC) $(NVCC_FLAGS) $< -c

cluster.o: cluster.cu kmeans.h
	$(CC) $(NVCC_FLAGS) cluster.cu -c

getopt.o: getopt.cpp getopt.h

read_input.o: read_input.cpp kmeans.h

rmse.o: rmse.cpp kmeans.h

clean:
	rm -f *.o *~ kmeans *.linkinfo

run: kmeans
	./kmeans -r -n 5 -m 15 -l 10 -o -i ../data/kmeans/kdd_cup


