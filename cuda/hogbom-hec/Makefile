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

program = main

obj = main.o kernels.o reference.o timer.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

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

ifeq ($(VERIFY),yes)
  NVCC_FLAGS += -DVERIFY
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cpp utils.h timer.h reference.h kernels.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

reference.o: reference.cpp reference.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

timer.o: timer.cpp timer.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

kernels.o: kernels.cu kernels.h timer.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) data/dirty_4096.img data/psf_4096.img 1000
