include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
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
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -DWARP_SIZE=32 -DHALF_WARP_SIZE=16 \
          -std=c++14 -I.

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cpp Makefile
	$(CXX) $(CXX_FLAGS) -c $< -o $@

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
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 1000
run_no_build:
	./$(program) 1000
