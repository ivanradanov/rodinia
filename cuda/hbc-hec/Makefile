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

program = main

source = main.cpp kernels.cu util.cpp parse.cpp sequential.cpp

obj = main.o kernels.o util.o parse.o sequential.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LDFLAGS)

main.o: main.cpp parse.h sequential.h util.h Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

kernels.o: kernels.cu util.h Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

util.o: util.cpp util.h Makefile 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

sequential.o: sequential.cpp sequential.h Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

parse.o: parse.cpp parse.h Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) output.txt

run: $(program)
	./$(program) -i ./graphs/breast_coexpress.txt -v --printscores=output.txt
