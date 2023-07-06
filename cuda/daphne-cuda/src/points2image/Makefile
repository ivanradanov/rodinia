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

source = ../common/main.cpp kernel.cu

obj = main.o kernel.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14 -I../include

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS += 
endif
#===============================================================================
# Targets to Build
#===============================================================================
all: $(program) checkdata

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

kernel.o: kernel.cu datatypes.h ../include/benchmark.h Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

main.o: ../common/main.cpp ../include/benchmark.h Makefile
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

checkdata:
ifeq ($(wildcard ../../data/p2i_input.dat),)
	$(warning p2i_input.dat not found. Did you forget to extract the test data?)
endif
ifeq ($(wildcard ../../data/p2i_output.dat),)
	$(warning p2i_output.dat not found. Did you forget to extract the test data?)
endif

clean:
	rm -rf $(program) $(obj)

# TODO: when p > 1, results mismatch
run: $(program)
	./$(program) -p 1
run_no_build:
	./$(program) -p 1
