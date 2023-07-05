#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = nvcc
OPTIMIZE  = yes
DEBUG     = no
VERIFY    = yes

#===============================================================================
# Program name & source code list
#===============================================================================
SLU_PATH = .

SLU_LIBS = $(SLU_PATH)/nicslu/lib/nicslu.a \
           $(SLU_PATH)/nicslu/util/nicslu_util.a

program = main

obj = preprocess.o Timer.o numeric.o symbolic.o main.o $(SLU_LIBS)

#===============================================================================
# Sets Flags
#===============================================================================
SLU_INC = -I$(SLU_PATH)/../include \
          -I$(SLU_PATH)/nicslu/include \
          -I$(SLU_PATH)/nicslu/util

# Standard Flags
NVCC_FLAGS := $(EXTRA_NVCC_FLAGS) -std=c++14 -Xcompiler -Wall $(SLU_INC)

# Linker Flags
LINKER_FLAGS = 

# Debug Flags
ifeq ($(DEBUG),yes)
  NVCC_FLAGS += -g -DDEBUG
  LINKER_FLAGS  += -g
endif

# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  NVCC_FLAGS += -O3
endif

ifeq ($(VERIFY),yes)
  NVCC_FLAGS += -DVERIFY
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(CC) $(NVCC_FLAGS) $(obj) -o $@ $(LINKER_FLAGS)

Timer.o: $(SLU_PATH)/Timer.cpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@

numeric.o: numeric.cu
	$(CC) $(NVCC_FLAGS) -c $< -o $@

symbolic.o: $(SLU_PATH)/symbolic.cpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@

main.o: $(SLU_PATH)/main.cpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@

preprocess.o: $(SLU_PATH)/preprocess.cpp
	$(CC) $(NVCC_FLAGS) -c $< -o $@

$(SLU_PATH)/nicslu/lib/nicslu.a:
	make -C $(SLU_PATH)/nicslu/

$(SLU_PATH)/nicslu/util/nicslu_util.a:
	make -C $(SLU_PATH)/nicslu/

clean:
	rm -rf $(program) $(obj) *.dat
	make -C $(SLU_PATH)/nicslu/ clean

test: $(program)
	./$(program) -i $(SLU_PATH)/nicslu/test/add32.mtx

run: $(program)
	./$(program) -i $(SLU_PATH)/nicslu/demo/ASIC_100k.mtx
