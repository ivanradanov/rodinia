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

source = main.cu shmem_kernels.cu

obj = main.o shmem_kernels.o

#===============================================================================
# Sets Flags
#===============================================================================

HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker Flags
LINKER_FLAGS += 

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

$(program): main.o shmem_kernels.o
	$(NVCC) $(HEC_NVCC_FLAGS) $^ -o $@ ${LFLAGS}

main.o: main.cu shmem_kernels.h
	$(NVCC) -c $(HEC_NVCC_FLAGS) $<

shmem_kernels.o: shmem_kernels.cu
	$(NVCC) -c $(HEC_NVCC_FLAGS) $<

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 1000
run_no_build:
	./$(program) 1000


