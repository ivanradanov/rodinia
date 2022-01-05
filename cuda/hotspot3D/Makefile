include ../../common/make.config

CC := $(NVCC)

INCLUDE := $(CUDA_DIR)/include

SRC = 3D.cu

EXE = 3D

OUTPUT = *.out

FLAGS = -g -G #-arch sm_20 --ptxas-options=-v
release: $(EXE)
$(EXE): $(SRC)
	$(NVCC) $(KERNEL_DIM) $(SRC) -o $(EXE) $(NVCC_FLAGS) $(LINKER_FLAGS)

enum: $(SRC)
	$(NVCC) $(KERNEL_DIM) $(FLAGS) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(NVCC) $(KERNEL_DIM) $(FLAGS) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(NVCC) $(KERNEL_DIM) $(FLAGS) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo $(OUTPUT) 
