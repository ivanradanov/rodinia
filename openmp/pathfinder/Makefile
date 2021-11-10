include ../../common/openmp.make.config
CC = g++
SRC = pathfinder.cpp
EXE = pathfinder
FLAGS = -fopenmp

$(EXE):
	$(CC) $(SRC) $(FLAGS) -o $(EXE) $(MY_ADDITIONAL_FLAGS)

debug:
	$(CC) $(SRC) -g -Wall -o $(EXE) $(MY_ADDITIONAL_FLAGS)

clean:
	rm -f pathfinder


