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

source = main.cu shrUtils.cu MedianFilterHost.cu

obj = $(source:.cu=.o)

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

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cu MedianFilter.cu shrUtils.h
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

MedianFilterHost.o : MedianFilterHost.cu 
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

shrUtils.o : shrUtils.cu shrUtils.h 
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) ../medianfilter-sycl/data/SierrasRGB.ppm 1000
run_no_build:
	./$(program) ../medianfilter-sycl/data/SierrasRGB.ppm 1000
