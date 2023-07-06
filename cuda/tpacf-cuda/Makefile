include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
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

%.o: %.c args.h Makefile
	$(NVCC) -x cu $(HEC_NVCC_FLAGS) -c $< -o $@

compute.o: compute.cu model_io.cu ACF_kernel.cu histogram_kernel.cu args.h Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) $(OUTFILE)

run: $(program)
	./$(program) $(DATAPARS) $(RANDPARS) $(ANALPARS) -o $(OUTFILE)
run_no_build:
	./$(program) $(DATAPARS) $(RANDPARS) $(ANALPARS) -o $(OUTFILE)
