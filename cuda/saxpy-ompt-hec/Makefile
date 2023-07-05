include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvc++
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
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -Wall 

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

ifeq ($(DEVICE),gpu)
  NVCC_FLAGS +=-Minfo -mp=gpu -gpu=$(SM) -cudalib=cublas
else
  NVCC_FLAGS +=
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.c asaxpy.h check1ns.h hsaxpy.h wtcalc.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program)
