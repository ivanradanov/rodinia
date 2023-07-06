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

c_source = main.c base.c param.c util.c
cuda_source = prna.cu 

obj = $(c_source:.c=.o) $(cuda_source:.cu=.o) 

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -DFLOAT -std=c++14

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

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

%.o: %.c
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

base.o : base.c base.h util.h
main.o : main.c prna.h util.h base.h
param.o : param.c param.h util.h  real.h
prna.o : prna.cu base.h prna.h util.h param.h real.h cu.h
util.o : util.c util.h

clean:
	rm -rf $(program) $(obj)

test: $(program)
	./$(program) ./test.seq

run: $(program)
	./$(program) ./HIV1-NL43.seq
run_no_build:
	./$(program) ./HIV1-NL43.seq
