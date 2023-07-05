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

program = qtc

cpp_source = main.cpp Option.cpp OptionParser.cpp comm.cpp libdata.cpp
cuda_source = QTC.cu 

obj = $(cpp_source:.cpp=.o) $(cuda_source:.cu=.o)

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

main.o: main.cpp OptionParser.h Utility.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

comm.o: comm.cpp comm.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

libdata.o: libdata.cpp libdata.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

Option.o: Option.cpp Option.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

OptionParser.o: OptionParser.cpp OptionParser.h Utility.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

QTC.o: QTC.cu cudacommon.h qtclib.h OptionParser.h libdata.h \
       tuningParameters.h comm.h kernels_compact_storage.h kernels_common.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) --Verbose
	#./$(program) --SaveOutput
