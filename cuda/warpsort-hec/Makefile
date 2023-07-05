#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cpp warpsort.cu

obj = main.o warpsort.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -DWARP_SIZE=32 -DHALF_WARP_SIZE=16 \
          -std=c++14 -I. -Xcompiler -Wall

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LDFLAGS)

main.o: main.cpp Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

warpsort.o: warpsort.cu cuda/CudaUtils.cuh \
                        cuda/Comparators.cuh \
                        cuda/DeviceTensor.cuh \
                        cuda/DeviceTensor-inl.cuh \
                        cuda/NumericLimits.cuh \
                        cuda/Pair.cuh \
                        cuda/RegisterUtils.cuh \
                        cuda/ShuffleTypes.cuh \
                        cuda/WarpBitonicSort.cuh \
                        Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 1000
