#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
MPI_INCLUDE = "/opt/nvidia/hpc_sdk/Linux_x86_64/22.11/comm_libs/mpi/include"
MPI_LIB_DIR = "/opt/nvidia/hpc_sdk/Linux_x86_64/22.11/comm_libs/mpi/lib"

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
NVCC_FLAGS := -DNX=400 \
       	  -DNZ=200 \
	  -DSIM_TIME=600 \
	  -DDATA_SPEC=DATA_SPEC_THERMAL \
          -I$(MPI_INCLUDE) \
          -std=c++14 -Xcompiler -Wall

# Linker Flags
LINKER_FLAGS = -L$(MPI_LIB_DIR) -lmpi

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS  += -g -DDEBUG
  LINKER_FLAGS += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	mpiexec -n 1 ./$(program)
