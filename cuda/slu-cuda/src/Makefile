include ../../common/make.config
#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
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
HEC_NVCC_FLAGS := $(NVCC_FLAGS) -std=c++14 $(SLU_INC)

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

ifeq ($(VERIFY),yes)
  HEC_NVCC_FLAGS += -DVERIFY
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(LINKER) $(obj) -o $@ $(LINKER_FLAGS)

Timer.o: $(SLU_PATH)/Timer.cpp
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

numeric.o: numeric.cu
	$(NVCC) $(HEC_NVCC_FLAGS) -c $< -o $@

symbolic.o: $(SLU_PATH)/symbolic.cpp
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

main.o: $(SLU_PATH)/main.cpp
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

preprocess.o: $(SLU_PATH)/preprocess.cpp
	$(CXX) $(HEC_NVCC_FLAGS) -c $< -o $@

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
run_no_build:
	./$(program) -i $(SLU_PATH)/nicslu/demo/ASIC_100k.mtx
