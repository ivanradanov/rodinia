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

obj = main.o force_kernel.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 \
          -D_MWAITXINTRIN_H_INCLUDED -D_FORCE_INLINES -D__STRICT_ANSI__ \
          -DGPU

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(CC) $(obj) $(NVCC_FLAGS) -o $@ $(LDFLAGS)

main.o: main.cpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@

force_kernel.o: force_kernel.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)
	rm -rf dataset/*.pdb
	rm -rf dataset/*.xyz
	rm -rf dataset/*.bak
	rm -rf dataset/*.dat

run: $(program)
	cd dataset && ../$(program) mcmd.inp && cd ..
