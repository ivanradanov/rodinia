include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
VERIFY    = no

#===============================================================================
# Program name & source code list
#===============================================================================

program = lulesh

source = lulesh.cu \
        lulesh-viz.cu \
        lulesh-util.cu \
        lulesh-init.cu


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

# Verify kernel results
ifeq ($(VERIFY),yes)
  HEC_NVCC_FLAGS += -DVERIFY
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

%.o: %.cu lulesh.h
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

test: $(program)
	./$(program) -i 1 -s 32 -r 11 -b 1 -c 1

run: $(program)
	./$(program) -i 100 -s 128 -r 11 -b 1 -c 1
run_no_build:
	./$(program) -i 100 -s 128 -r 11 -b 1 -c 1

