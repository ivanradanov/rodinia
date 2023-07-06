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

program = sph

build: $(program)

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

$(program): fileio.o fluid.o geometry.o
	$(LINKER) $+ -o $@ $(LINKER_FLAGS)

fileio.o : fileio.cu
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

fluid.o : fluid.cu  
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

geometry.o : geometry.cu
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) fileio.o fluid.o geometry.o *.csv

run: $(program)
	./$(program)
run_no_build:
	./$(program)
