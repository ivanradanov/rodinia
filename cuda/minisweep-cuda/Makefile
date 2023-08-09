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

source = main.cu

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

%.o: %.cu kernels.cu utils.cu utils.h Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) $(POLYGEIST_LLVM_STRUCT_ABI_0) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) --niterations 100
run_no_build:
	./$(program) --niterations 100
	./$(program) --niterations 1 --ncell_x 32 --ncell_y 32 --ncell_z 64 --ne 64 --na 32 --nblock_z 64
