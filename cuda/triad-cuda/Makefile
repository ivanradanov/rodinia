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

program = triad

source = main.cpp  Option.cpp  OptionParser.cpp  Timer.cpp
cuda_source = triad.cu 

obj = $(source:.cpp=.o) $(cuda_source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14

# Linker Flags
LINKER_FLAGS += 

# Debug Flags
ifeq ($(DEBUG),yes)
  HEC_NVCC_FLAGS += -g
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

main.o: main.cpp OptionParser.h Utility.h 
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

Option.o: Option.cpp Option.h 
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

OptionParser.o: OptionParser.cpp OptionParser.h  Utility.h
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

triad.o: triad.cu Timer.h OptionParser.h 
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

Timer.o: Timer.cpp Timer.h config.h  
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@


clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) --passes 100 -v
run_no_build:
	./$(program) --passes 100 -v
