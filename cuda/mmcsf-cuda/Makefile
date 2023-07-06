include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
BOOST     = $(HOME)/boost_1_76_0
ARCH      = sm_60

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu kernels.cu mttkrp_cpu.cu 


obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -I$(BOOST) -std=c++14

# Linker Flags
LINKER_FLAGS += -lpthread

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

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu mttkrp_cpu.h mttkrp_gpu.h util.h   
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

# generate a 4D tensor with random values
output.tns: generate_tensor.py
	python generate_tensor.py output.tns 2%4096 2%4096 2%4096 2%512

test: toy.tns $(program)
	./$(program) -i toy.tns -m 0 -R 32 -f 128 -w 1
  
run: output.tns $(program)
	./$(program) -i output.tns -m 0 -R 32 -f 128 -w 4
run_no_build:
	./$(program) -i output.tns -m 0 -R 32 -f 128 -w 4
