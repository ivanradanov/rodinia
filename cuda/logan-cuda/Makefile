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

source = src/main.cu src/seed.cu src/score.cu src/logan_functions.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14 \
          \
          -Isrc 

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  HEC_NVCC_FLAGS +=  -maxrregcount=32 -DADAPTABLE
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

src/main.o: src/main.cu src/logan.cuh Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c -dc $< -o $@

src/seed.o: src/seed.cu src/seed.cuh Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c -dc $< -o $@

src/score.o: src/score.cu src/score.cuh Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c -dc $< -o $@

src/logan_functions.o: src/logan_functions.cu \
                       src/logan_functions.cuh src/seed.cuh Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c -dc $< -o $@

clean:
	rm -rf $(program) $(obj)

demo: $(program)
	./$(program) inputs/example.txt 17 21 1

run: $(program)
	./$(program) inputs/100k.txt 17 100 1
run_no_build:
	./$(program) inputs/100k.txt 17 100 1
