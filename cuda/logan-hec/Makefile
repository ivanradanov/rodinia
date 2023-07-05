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

program = main

source = src/main.cu src/seed.cu src/score.cu src/logan_functions.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 \
          -Xcompiler -Wall -Xcompiler -fopenmp \
          -Isrc 

# Linker Flags
LINKER_FLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3 -maxrregcount=32 -DADAPTABLE
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

src/main.o: src/main.cu src/logan.cuh Makefile
	$(CC) $(NVCC_FLAGS) -c -dc $< -o $@

src/seed.o: src/seed.cu src/seed.cuh Makefile
	$(CC) $(NVCC_FLAGS) -c -dc $< -o $@

src/score.o: src/score.cu src/score.cuh Makefile
	$(CC) $(NVCC_FLAGS) -c -dc $< -o $@

src/logan_functions.o: src/logan_functions.cu \
                       src/logan_functions.cuh src/seed.cuh Makefile
	$(CC) $(NVCC_FLAGS) -c -dc $< -o $@

clean:
	rm -rf $(program) $(obj)

demo: $(program)
	./$(program) inputs/example.txt 17 21 1

run: $(program)
	./$(program) inputs/100k.txt 17 100 1
