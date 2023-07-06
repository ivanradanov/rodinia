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

c_source = main.c fbase.c fparam.c util.c
cuda_source = frna.cu 

obj = $(c_source:.c=.o) $(cuda_source:.cu=.o) 

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -DINT -std=c++14

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

fbase.o : fbase.c fbase.h util.h cu.h
main.o : main.c frna.h util.h fbase.h
fparam.o : fparam.c fparam.h util.h fbase.h int.h
fprna.o : fprna.cu frna.h util.h
util.o : util.c util.h

clean:
	rm -rf $(program) $(obj) *.out

test: $(program)
	./$(program) ./RD0260.seq rd0260.out

run: $(program)
	./$(program) ../prna-cuda/HIV1-NL43.seq  hiv1-nl43.out
run_no_build:
	./$(program) ../prna-cuda/HIV1-NL43.seq  hiv1-nl43.out
