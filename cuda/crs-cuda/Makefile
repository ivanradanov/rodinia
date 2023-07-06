include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
OUTPUT    = no

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu galois.cu jerasure.cu GCRSMatrix.cu utils.cu

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

# Dump output
ifeq ($(OUTPUT),yes)
  HEC_NVCC_FLAGS += -DDUMP
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

%.o: %.cu 
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

jerasure.o: jerasure.h galois.h
galois.o: galois.h
GCRSMatrix.o: GCRSMatrix.h jerasure.h galois.h
main.o: utils.h GCRSMatrix.h kernels.cu
utils.o: utils.h

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 10 10 
run_no_build:
	./$(program) 10 10 
