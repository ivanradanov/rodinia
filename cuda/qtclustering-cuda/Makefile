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

program = qtc

cpp_source = main.cpp Option.cpp OptionParser.cpp comm.cpp libdata.cpp
cuda_source = QTC.cu 

obj = $(cpp_source:.cpp=.o) $(cuda_source:.cu=.o)

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

main.o: main.cpp OptionParser.h Utility.h 
	$(CXX) $(CXX_FLAGS) -c $< -o $@

comm.o: comm.cpp comm.h
	$(CXX) $(CXX_FLAGS) -c $< -o $@

libdata.o: libdata.cpp libdata.h
	$(CXX) $(CXX_FLAGS) -c $< -o $@

Option.o: Option.cpp Option.h 
	$(CXX) $(CXX_FLAGS) -c $< -o $@

OptionParser.o: OptionParser.cpp OptionParser.h Utility.h
	$(CXX) $(CXX_FLAGS) -c $< -o $@

QTC.o: QTC.cu cudacommon.h qtclib.h OptionParser.h libdata.h \
       tuningParameters.h comm.h kernels_compact_storage.h kernels_common.h
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) --Verbose
run_no_build:
	./$(program) --Verbose
	#./$(program) --SaveOutput
