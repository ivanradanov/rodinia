include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60
DP        = no

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = main.cu device_sc.cu host_sc.cpp

obj = main.o device_sc.o host_sc.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker Flags
LINKER_FLAGS += -lpthread

ifeq ($(DP),yes)
  HEC_NVCC_FLAGS += -DDYNAMIC_PARTITION
endif

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

%.o: %.cu kernel.h \
          support/common.h \
          support/partitioner.h \
          support/setup.h \
          support/verify.h \
          Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

%.o: %.cpp kernel.h \
           support/common.h \
           support/partitioner.h \
           Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) -a 0.1
run_no_build:
	./$(program) -a 0.1
