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

source = main.c util.c \
         Kernel256_winograd.cu \
         Kernel128_winograd.cu \
         Kernel256_one.cu \
         Kernel128_one.cu

obj = main.o util.o Kernel256_winograd.o Kernel128_winograd.o \
      Kernel256_one.o Kernel128_one.o


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

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

%.o: %.c
	$(NVCC) -x cu $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

data_gen: data_generator.py
	rm -rf data
	mkdir data
	python3 data_generator.py

run: $(program)
	./$(program) 0 100
run_no_build:
	./$(program) 0 100
	./$(program) 1 100
	./$(program) 2 100
	./$(program) 3 100
	./$(program) 4 100
	./$(program) 5 100
