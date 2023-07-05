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
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14

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

$(program): fileio.o fluid.o geometry.o
	$(LINKER) $+ -o $@ $(LINKER_FLAGS)

fileio.o : fileio.cu
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

fluid.o : fluid.cu  
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

geometry.o : geometry.cu
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) fileio.o fluid.o geometry.o *.csv

run: $(program)
	./$(program)
