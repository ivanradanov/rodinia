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

source = main.cu bench_merkle_tree.cu merkle_tree.cu \
         rescue_prime.cu ff_p.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++17 -Xcompiler -Wall --expt-relaxed-constexpr

# Linker Flags
LINKER_FLAGS = 

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

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu
	$(CC) $(NVCC_FLAGS) -dc $< -o $@

main.cu: bench_merkle_tree.hpp
bench_merkle_tree.cu: bench_merkle_tree.hpp
merkle_tree.cu: merkle_tree.hpp
rescue_prime.cu: rescue_prime.hpp
ff_p.cu: ff_p.hpp

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program)
