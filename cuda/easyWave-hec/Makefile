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

source = main.cu cOgrd.cpp  cOkadaFault.cpp  cOkadaEarthquake.cpp cSphere.cpp okada.cpp utilits.cpp

obj = main.o cOgrd.o  cOkadaFault.o  cOkadaEarthquake.o cSphere.o okada.o utilits.o

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

%.o: %.cpp Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

%.o: %.cu Makefile
	$(CC) $(NVCC_FLAGS) -c $< -o $@

cOgrd.o: cOgrd.cpp  cOgrd.h utilits.h
cOkadaEarthquake.o: cOkadaEarthquake.cpp  cOkadaEarthquake.h utilits.h
cOkadaFault.o: cOkadaFault.cpp  cOkadaFault.h utilits.h
cSphere.o: cSphere.cpp cSphere.h utilits.h
main.o : main.cu kernels.cuh easywave.h utilits.h
utilits.o: utilits.cpp utilits.h

clean:
	rm -rf $(program) $(obj) eWave.2D.*

run: $(program)
	./$(program) -grid ../easyWave-omp/data/grids/e2Asean.grd -source ../easyWave-omp/data/faults/BengkuluSept2007.flt -time 120 

