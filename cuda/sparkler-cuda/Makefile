include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================
MPI_ROOT=/opt/nvidia/hpc_sdk/Linux_x86_64/21.3/comm_libs/mpi
CUBLAS_ROOT=/opt/nvidia/hpc_sdk/Linux_x86_64/21.3/math_libs/11.2
CUDART_ROOT=/opt/nvidia/hpc_sdk/Linux_x86_64/21.3/cuda/11.2

# Compiler can be set below, or via environment variable
LD        = mpiCC #$(MPI_ROOT)/bin/mpiCC
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -I$(MPI_ROOT)/include -std=c++11

# Linker Flags
LINKER_FLAGS += -L$(CUBLAS_ROOT)/targets/x86_64-linux/lib/ -lcublas \
	  -L$(CUDART_ROOT)/targets/x86_64-linux/lib/ -lcudart

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g
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
	$(LD) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	mpirun -n 4 ./$(program) --num_vector 4000 --num_field 90000 --num_iterations 10
run_no_build:
	mpirun -n 4 ./$(program) --num_vector 4000 --num_field 90000 --num_iterations 10
