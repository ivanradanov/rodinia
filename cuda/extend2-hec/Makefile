include ../../common/make.config
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

source = main.cu ../extend2-sycl/read_data.cpp
obj = main.o read_data.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall -I../extend2-sycl

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

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cu filelist.txt 
	$(CC) $(NVCC_FLAGS) -o main.o -c main.cu

read_data.o: ../extend2-sycl/read_data.cpp ../extend2-sycl/read_data.h
	$(CC) $(NVCC_FLAGS) -o read_data.o -c ../extend2-sycl/read_data.cpp

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 2000

