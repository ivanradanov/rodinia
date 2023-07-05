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

obj = main.o utils.o heap.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14

# Linker Flags
LINKER_FLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
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

heap.o: heap.cu heap.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

utils.o: utils.cu heap.h utils.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

main.o: main.cu utils.h kernel_metropolis.h kernel_prng.h kernel_reduction.h  
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) *.dat

dbg: $(program)
	./$(program) -l 32 11 -t 4.7 0.1 -a 1 1 1 1 -h 1.0 -z 7919

run: $(program)
	./$(program) -l 32 11 -t 4.7 0.1 -a 10 2 2000 10 -h 1.0 -z 7919
