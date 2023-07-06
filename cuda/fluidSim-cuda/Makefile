include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
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

ifeq ($(VERIFY),yes)
  HEC_NVCC_FLAGS += -DVERIFY
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

kernels.o: kernels.cu utils.h Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

main.o: main.cpp utils.h Makefile
	$(CXX) $(HEC_NVCC_FLAGS) -x cu -c $< -o $@

reference.o: ../fluidSim-sycl/reference.cpp Makefile
	$(CXX) $(HEC_NVCC_FLAGS) -x cu -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 10000
run_no_build:
	./$(program) 10000
