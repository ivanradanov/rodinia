include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
ARCH      = sm_60

#===============================================================================
# Program name & source code list
#===============================================================================

SPATH = ../boxfilter-sycl

program = main

obj = main.o shrUtils.o cmd_arg_reader.o reference.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall -I../boxfilter-sycl

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


#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cu $(SPATH)/shrUtils.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

shrUtils.o : $(SPATH)/shrUtils.cpp $(SPATH)/shrUtils.h $(SPATH)/cmd_arg_reader.h $(SPATH)/exception.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

cmd_arg_reader.o : $(SPATH)/cmd_arg_reader.cpp $(SPATH)/cmd_arg_reader.h $(SPATH)/exception.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

reference.o : $(SPATH)/reference.cpp 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) ../boxfilter-sycl/data/lenaRGB.ppm 10000
