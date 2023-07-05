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

source = main.cu file.cc

obj = main.o file.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3 -use_fast_math
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LDFLAGS)

main.o: main.cu computeQ.cu Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

file.o: file.cc file.h Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) output*

run: $(program)
	./$(program) datasets/128x128x128/input/128x128x128.bin output_128
