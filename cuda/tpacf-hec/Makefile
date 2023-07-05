#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

POINTS    = 97178
DATAPARS  = -d ./data/small/Datapnts.1 -p $(POINTS)
RANDPARS  = -r ./data/small/Randompnts -n 100 -q $(POINTS)
ANALPARS  = -b 5 -l 1 -u 10000 -a -j 10
OUTFILE   = ./small_results_test_g200.dat

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.c args.c compute.cu

obj = main.o args.o compute.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LDFLAGS)

%.o: %.c args.h Makefile
	$(CC) -x cu $(NVCC_FLAGS) -c $< -o $@

compute.o: compute.cu model_io.cu ACF_kernel.cu histogram_kernel.cu args.h Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) $(OUTFILE)

run: $(program)
	./$(program) $(DATAPARS) $(RANDPARS) $(ANALPARS) -o $(OUTFILE)
