include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
GPU       = yes

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu

obj = main.o

headers = \
	src/cuBool_gpu.cuh \
	src/bit_vector_kernels.cuh \
	src/float_kernels.cuh \
	src/cuBool_cpu.h \
	src/bit_vector_functions.h \
	src/config.h \
	src/io_and_allocation.hpp \
	src/updates_and_measures.cuh \
	src/helper/clipp.h \
	src/helper/rngpu.hpp \
	src/helper/cuda_helpers.cuh

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

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

ifeq ($(GPU),yes)
  HEC_NVCC_FLAGS +=-DUSE_GPU --default-stream per-thread \
           -Xcompiler="-fopenmp"
else
  HEC_NVCC_FLAGS += -x c++ -Wall -fopenmp
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: src/main.cu $(headers) Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) data/*.data data/*.txt

# The dataset are available at https://github.com/Funatiq/cuBool 
run: $(program)
	./$(program) data/MNIST.in -r 8 -l 112 -i 10000 --seed 123 --stuck 10000
run_no_build:
	./$(program) data/MNIST.in -r 8 -l 112 -i 10000 --seed 123 --stuck 10000
