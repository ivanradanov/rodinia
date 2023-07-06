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

cuda_source = main.cu
cpp_source = reference.cpp su_cdp.cpp  su_gather.cpp  su_trace.cpp  log.cpp  parser.cpp  

obj = $(cuda_source:.cu=.o) $(cpp_source:.cpp=.o)

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

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

%.o: %.cu
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

%.o: %.cpp
	$(CXX) $(CXX_FLAGS) -c $< -o $@

log.o : log.cpp log.hpp
parser.o: parser.cpp parser.hpp  
su_cdp.o : su_cdp.cpp su_cdp.hpp log.hpp
su_gather.o : su_gather.cpp su_gather.hpp log.hpp su_trace.hpp
su_trace.o : su_trace.cpp su_trace.hpp log.hpp
main.o : main.cu log.hpp utils.hpp parser.hpp su_gather.hpp
reference.o : reference.cpp utils.hpp

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) -c0 1.98e-7 -c1 1.77e-6 -nc 5 -aph 600 -tau 0.002 -v 2 -i ./data/simple-synthetic.su
run_no_build:
	./$(program) -c0 1.98e-7 -c1 1.77e-6 -nc 5 -aph 600 -tau 0.002 -v 2 -i ./data/simple-synthetic.su
