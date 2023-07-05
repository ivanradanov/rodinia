#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
OUTPUT    = no

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu ./util/num/num.cu ./util/timer/timer.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LINKER_FLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif

ifeq ($(OUTPUT),yes)
  NVCC_FLAGS += -DOUTPUT
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

main.o:	main.cu main.h kernel.h

./util/num/num.o: ./util/num/num.cu ./util/num/num.h 

./util/timer/timer.o: ./util/timer/timer.cu ./util/timer/timer.h 

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) -boxes1d 30
