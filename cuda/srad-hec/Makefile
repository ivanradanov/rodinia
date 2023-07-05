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
program = srad

source = main.cu

obj = $(source:.cu=.o)


#===============================================================================
# Sets Flags
#===============================================================================

# Standard flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker flags
LINKER_FLAGS = -lm

# Debug Flags
ifeq ($(DEBUG),yes)
	NVCC_FLAGS += -g  
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

%.o: %.cu graphics.c resize.c timer.c \
	extract_kernel.cu prepare_kernel.cu \
	reduce_kernel.cu srad_kernel.cu srad2_kernel.cu compress_kernel.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

# delete all object files
clean:
	rm -f *.o srad *pgm

run: $(program)
	./$(program) 1000 0.5 502 458
