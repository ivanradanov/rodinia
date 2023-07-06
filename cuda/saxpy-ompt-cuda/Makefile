include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
DEVICE    = gpu
SM        = cc70

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = saxpy.c hsaxpy.c asaxpy.c check1ns.c wtcalc.c

obj = $(source:.c=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -Wall 

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

ifeq ($(DEVICE),gpu)
  HEC_NVCC_FLAGS +=-Minfo -mp=gpu -gpu=$(SM) -cudalib=cublas
else
  HEC_NVCC_FLAGS +=
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.c asaxpy.h check1ns.h hsaxpy.h wtcalc.h
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program)
run_no_build:
	./$(program)
