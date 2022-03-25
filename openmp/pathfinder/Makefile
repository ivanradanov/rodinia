include ../../common/openmp.make.config
SRC = pathfinder.cpp
EXE = pathfinder

$(EXE):
	$(CXX) $(SRC) $(CC_FLAGS) -o $(EXE) $(LINKER_FLAGS)

debug:
	$(CC) $(SRC) -g -Wall -o $(EXE) $(MY_ADDITIONAL_FLAGS)

clean:
	rm -f pathfinder


