include ../../common/make.config

CC := $(NVCC)

INCLUDE := $(CUDA_DIR)/include

SRC = main.cu
OBJ = main.o
EXE = srad

$(EXE): $(OBJ)
	$(LINKER) $(OBJ) -o $(EXE) $(LINKER_FLAGS)

$(OBJ): $(SRC)
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@ -I../util


# delete all object files
clean:
	rm *.o srad
