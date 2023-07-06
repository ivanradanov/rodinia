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

source = kernel.cu fim.cu timer.cu main.cpp StructuredEikonal.cu

obj = kernel.o fim.o timer.o main.o StructuredEikonal.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

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

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

%.o: %.cpp Makefile
	$(CXX) $(CXX_FLAGS) -c $< -o $@

kernel.o: kernel.cu kernel.h
fim.o: fim.cu fim.h kernel.h
timer.o : timer.cpp timer.h my_exception.h
StructuredEikonal.o : StructuredEikonal.cu StructuredEikonal.h common_def.h
main.o : main.cpp StructuredEikonal.h

clean:
	rm -rf $(program) $(obj) output.nrrd

run: $(program)
	./$(program) -s 512
run_no_build:
	./$(program) -s 512
