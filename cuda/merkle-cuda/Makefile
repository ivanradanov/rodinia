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

source = main.cu bench_merkle_tree.cu merkle_tree.cu \
         rescue_prime.cu ff_p.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++17 --expt-relaxed-constexpr

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS  += -g -DDEBUG
  LINKER_FLAGS += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu
	$(NVCC) $(HEC_NVCC_FLAGS) -dc $< -o $@

main.cu: bench_merkle_tree.hpp
bench_merkle_tree.cu: bench_merkle_tree.hpp
merkle_tree.cu: merkle_tree.hpp
rescue_prime.cu: rescue_prime.hpp
ff_p.cu: ff_p.hpp

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program)
run_no_build:
	./$(program)
