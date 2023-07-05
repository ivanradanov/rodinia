#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
OUTPUT    = no

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu galois.cu jerasure.cu GCRSMatrix.cu utils.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LINKER_FLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g
  LINKER_FLAGS  += -g
endif

# Dump output
ifeq ($(OUTPUT),yes)
  NVCC_FLAGS += -DDUMP
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

jerasure.o: jerasure.h galois.h
galois.o: galois.h
GCRSMatrix.o: GCRSMatrix.h jerasure.h galois.h
main.o: utils.h GCRSMatrix.h kernels.cu
utils.o: utils.h

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 10 10 
