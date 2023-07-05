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

program = triad

source = main.cpp  Option.cpp  OptionParser.cpp  Timer.cpp
cuda_source = triad.cu 

obj = $(source:.cpp=.o) $(cuda_source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

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

$(program): $(obj) Makefile
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

main.o: main.cpp OptionParser.h Utility.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

Option.o: Option.cpp Option.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

OptionParser.o: OptionParser.cpp OptionParser.h  Utility.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

triad.o: triad.cu Timer.h OptionParser.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

Timer.o: Timer.cpp Timer.h config.h  
	$(CC) $(NVCC_FLAGS) -c $< -o $@


clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) --passes 100 -v
