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
  HEC_NVCC_FLAGS += -g
  LINKER_FLAGS  += -g
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS +=  -use_fast_math
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu kernels.cu Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

# dataset is available at https://github.com/kuiwuchn/3x3_SVD_CUDA/blob/master/svd3x3/svd3x3/Dataset_1M.txt
run: $(program)
	./$(program) Dataset_1M.txt 100
	./$(program) Dataset_1M.txt 300
	./$(program) Dataset_1M.txt 600
	./$(program) Dataset_1M.txt 900
run_no_build:
	./$(program) Dataset_1M.txt 100
	./$(program) Dataset_1M.txt 300
	./$(program) Dataset_1M.txt 600
	./$(program) Dataset_1M.txt 900
