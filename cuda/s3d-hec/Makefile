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

program = s3d

source = main.cu  Option.cu  OptionParser.cu  S3D.cu

obj = $(source:.cu=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g
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


main.o: main.cu OptionParser.h Utility.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

Option.o: Option.cu Option.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

OptionParser.o: OptionParser.cu OptionParser.h  Utility.h
	$(CC) $(NVCC_FLAGS) -c $< -o $@

S3D.o: S3D.cu S3D.h OptionParser.h gr_base.h ratt.h \
       ratt2.h ratx.h qssa.h qssa2.h rdwdot.h 
	$(CC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) -q -n 100 -s 1
