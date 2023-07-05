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

source = main.c util.c \
         Kernel256_winograd.cu \
         Kernel128_winograd.cu \
         Kernel256_one.cu \
         Kernel128_one.cu

obj = main.o util.o Kernel256_winograd.o Kernel128_winograd.o \
      Kernel256_one.o Kernel128_one.o


#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
CFLAGS := $(EXTRA_CFLAGS) -std=c++14 -Xcompiler -Wall -arch=$(ARCH)

# Linker Flags
LDFLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  CFLAGS += -g -DDEBUG
  LDFLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  CFLAGS += -O3
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(CC) $(CFLAGS) $(obj) -o $@ $(LDFLAGS)

%.o: %.cu
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.c
	$(CC) -x cu $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

data_gen: data_generator.py
	rm -rf data
	mkdir data
	python3 data_generator.py

run: $(program)
	./$(program) 0 100
	./$(program) 1 100
	./$(program) 2 100
	./$(program) 3 100
	./$(program) 4 100
	./$(program) 5 100
