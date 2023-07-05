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

program = divergence


#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LDFLAGS = 

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

$(program): divergence.o timer.o 
	$(CC) $(NVCC_FLAGS) $^ -o $@ $(LDFLAGS)

divergence.o: divergence.cu divergence.hpp Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

timer.o: timer/timer.cpp timer/timer.hpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@


clean:
	rm -rf $(program) *.o

run: $(program)
	./$(program) input.txt 10000
