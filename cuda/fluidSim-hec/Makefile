#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
VERIFY    = yes

#===============================================================================
# Program name & source code list
#===============================================================================
program = main

obj = main.o kernels.o reference.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

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

ifeq ($(VERIFY),yes)
  NVCC_FLAGS += -DVERIFY
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

kernels.o: kernels.cu utils.h Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

main.o: main.cpp utils.h Makefile
	$(CC) $(NVCC_FLAGS) -x cu -c $< -o $@

reference.o: ../fluidSim-sycl/reference.cpp Makefile
	$(CC) $(NVCC_FLAGS) -x cu -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 10000
