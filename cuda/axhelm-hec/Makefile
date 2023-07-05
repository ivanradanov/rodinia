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

obj = main.o meshBasis.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall \
          -Ddfloat=float -Ddlong=int 

# Linker Flags
LDFLAGS = BlasLapack/libBlasLapack.a -lgfortran

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) BlasLapack/libBlasLapack.a 
	$(CC) $(NVCC_FLAGS) $+ -o $@ $(LDFLAGS)

main.o : main.cu axhelmKernel.cpp axhelmReference.cpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@
	
meshBasis.o : meshBasis.cpp meshBasis.hpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@

BlasLapack/libBlasLapack.a: 
	cd BlasLapack && make -j8 && cd ..

clean:
	cd BlasLapack && make clean && cd ..
	rm -rf $(program) $(obj)

# run one- and three-dimensional kernels
run: $(program)
	./$(program) 1 8000 100
	./$(program) 3 8000 100
