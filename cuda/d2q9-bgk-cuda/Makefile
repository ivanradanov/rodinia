include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

CheckSize ?= 256x256
FINAL_STATE_FILE = ./final_state.dat
AV_VELS_FILE = ./av_vels.dat
REF_FINAL_STATE_FILE = ./check/$(CheckSize).final_state.dat
REF_AV_VELS_FILE = ./check/$(CheckSize).av_vels.dat


#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu

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

clean:
	rm -rf $(program) $(obj) *.dat

run: $(program)
	./$(program) Inputs/input_256x256.params Obstacles/obstacles_256x256.dat
run_no_build:
	./$(program) Inputs/input_256x256.params Obstacles/obstacles_256x256.dat

check: $(AV_VELS_FILE) $(FINAL_STATE_FILE)
	python check/check.py --ref-av-vels-file=$(REF_AV_VELS_FILE) \
        --ref-final-state-file=$(REF_FINAL_STATE_FILE) \
        --av-vels-file=$(AV_VELS_FILE) \
        --final-state-file=$(FINAL_STATE_FILE)
