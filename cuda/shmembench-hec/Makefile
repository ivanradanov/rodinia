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

source = main.cu shmem_kernels.cu

obj = main.o shmem_kernels.o

#===============================================================================
# Sets Flags
#===============================================================================

NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LINKER_FLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): main.o shmem_kernels.o
	$(CC) $(NVCC_FLAGS) $^ -o $@ ${LFLAGS}

main.o: main.cu shmem_kernels.h
	$(CC) -c $(NVCC_FLAGS) $<

shmem_kernels.o: shmem_kernels.cu
	$(CC) -c $(NVCC_FLAGS) $<

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 1000


