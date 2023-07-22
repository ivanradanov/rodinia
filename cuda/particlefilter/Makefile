#makefile

include ../../common/make.config

CC := $(NVCC)


SRC = ex_particle_CUDA_naive_seq.cu
OBJ = ex_particle_CUDA_naive_seq.o
EXE = particlefilter_naive
SRC2 = ex_particle_CUDA_float_seq.cu
OBJ2 = ex_particle_CUDA_float_seq.o
EXE2 = particlefilter_float

all: $(EXE) $(EXE2)


$(EXE): $(OBJ)
	$(LINKER) $(OBJ) -o $(EXE) $(LINKER_FLAGS)

$(OBJ): $(SRC)
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

$(EXE2): $(OBJ2)
	$(LINKER) $(OBJ2) -o $(EXE2) $(LINKER_FLAGS)

$(OBJ2): $(SRC2)
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

clean:
	rm particlefilter_naive particlefilter_float *.o
