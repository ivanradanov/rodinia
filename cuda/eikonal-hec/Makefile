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

source = kernel.cu fim.cu timer.cu main.cpp StructuredEikonal.cu

obj = kernel.o fim.o timer.o main.o StructuredEikonal.o

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
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

%.o: %.cpp Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

kernel.o: kernel.cu kernel.h
fim.o: fim.cu fim.h kernel.h
timer.o : timer.cpp timer.h my_exception.h
StructuredEikonal.o : StructuredEikonal.cu StructuredEikonal.h common_def.h
main.o : main.cpp StructuredEikonal.h

clean:
	rm -rf $(program) $(obj) output.nrrd

run: $(program)
	./$(program) -s 512
