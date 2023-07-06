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

obj = main.o meshBasis.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14 \
          -Ddfloat=float -Ddlong=int 

# Linker Flags
LINKER_FLAGS += BlasLapack/libBlasLapack.a -lgfortran

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

$(program): $(obj) BlasLapack/libBlasLapack.a 
	$(LINKER) $+ -o $@ $(LINKER_FLAGS)

main.o : main.cu axhelmKernel.cpp axhelmReference.cpp
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@
	
meshBasis.o : meshBasis.cpp meshBasis.hpp
	$(CXX) $(CXX_FLAGS) -c $< -o $@

BlasLapack/libBlasLapack.a: 
	cd BlasLapack && make -j8 && cd ..

clean:
	cd BlasLapack && make clean && cd ..
	rm -rf $(program) $(obj)

# run one- and three-dimensional kernels
run: $(program)
	./$(program) 1 8000 100
run_no_build:
	./$(program) 1 8000 100
	./$(program) 3 8000 100
