include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
VERIFY    = no

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

obj = main.o kernels.o reference.o timer.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g
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

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cpp utils.h timer.h reference.h kernels.h
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

reference.o: reference.cpp reference.h 
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

timer.o: timer.cpp timer.h 
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

kernels.o: kernels.cu kernels.h timer.h
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) data/dirty_4096.img data/psf_4096.img 1000
run_no_build:
	./$(program) data/dirty_4096.img data/psf_4096.img 1000
