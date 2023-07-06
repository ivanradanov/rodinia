include ../../common/make.config
ARCH = 60

INC_DIR = include
SRC_DIR = src
OBJ_DIR = bin
EXEC_NAME = demo

SRC_FILES := $(wildcard $(SRC_DIR)/*.cc)
CU_SRC_FILES := $(wildcard $(SRC_DIR)/*.cu)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.cc,$(OBJ_DIR)/%.o,$(SRC_FILES))
CU_OBJ_FILES := $(patsubst $(SRC_DIR)/%.cu,$(OBJ_DIR)/%.obj,$(CU_SRC_FILES))

$(OBJ_DIR)/$(EXEC_NAME): $(OBJ_FILES) $(CU_OBJ_FILES)
	$(LINKER) $(LINKER_FLAGS) $(OBJ_FILES) $(CU_OBJ_FILES) -o $(OBJ_DIR)/$(EXEC_NAME)

$(OBJ_DIR)/%.obj: $(SRC_DIR)/%.cu
	$(NVCC) $(NVCC_FLAGS) -I $(INC_DIR) -c -o $@ $<

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cc
	$(CXX) $(CXX_FLAGS) -I $(INC_DIR) -c -o $@ $<

.PHONY: clean
clean:
	rm -f $(RM_FLAGS) $(OBJ_DIR)/*.o
	rm -f $(RM_FLAGS) $(OBJ_DIR)/*.obj
	rm -f $(RM_FLAGS) $(OBJ_DIR)/$(EXEC_NAME)

run: $(OBJ_DIR)/$(EXEC_NAME)
	./$(OBJ_DIR)/$(EXEC_NAME) 10
run_no_build:
	./$(OBJ_DIR)/$(EXEC_NAME) 10
