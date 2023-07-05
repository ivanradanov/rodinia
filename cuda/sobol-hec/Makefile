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

program = SobolQRNG

source = sobol.cu sobol_gold.cu sobol_gpu.cu sobol_primitives.cu

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

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

$(program): $(obj) 
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

sobol.o:sobol.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

sobol_gold.o:sobol_gold.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

sobol_gpu.o:sobol_gpu.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

sobol_primitives.o:sobol_primitives.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 1000000 1000 100
