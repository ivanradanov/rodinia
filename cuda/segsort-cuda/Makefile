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

headers = \
	src/bb_bin.cuh \
	src/bb_comput_common.cuh \
	src/bb_comput_l_keys.cuh \
	src/bb_comput_l.cuh \
	src/bb_comput_s_keys.cuh \
	src/bb_comput_s.cuh \
	src/bb_exch_keys.cuh \
	src/bb_exch.cuh \
	src/bb_segsort_common.cuh \
	src/bb_segsort_keys.cuh \
	src/bb_segsort.cuh

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14 --expt-relaxed-constexpr

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

%.o: %.cu $(headers) Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program)
run_no_build:
	./$(program)

