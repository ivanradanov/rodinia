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

source = main.cpp kernels.cu util.cpp parse.cpp sequential.cpp

obj = main.o kernels.o util.o parse.o sequential.o

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

$(program): $(obj) Makefile
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cpp parse.h sequential.h util.h Makefile
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

kernels.o: kernels.cu util.h Makefile
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

util.o: util.cpp util.h Makefile 
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

sequential.o: sequential.cpp sequential.h Makefile
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

parse.o: parse.cpp parse.h Makefile
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) output.txt

run: $(program)
	./$(program) -i ./graphs/breast_coexpress.txt -v --printscores=output.txt
run_no_build:
	./$(program) -i ./graphs/breast_coexpress.txt -v --printscores=output.txt
