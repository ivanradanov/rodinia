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

source = main.cu model_eval.cu model_fitting.cpp 

obj = main.o model_eval.o model_fitting.o 

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LINKER_FLAGS = -lpthread

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu kernel.h \
          support/common.h \
          support/setup.h \
          support/verify.h \
          Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

%.o: %.cpp kernel.h \
           support/common.h \
           Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) -f input/vectors.csv -g 512
