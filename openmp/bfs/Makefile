include ../../common/openmp.make.config

all: bfs

bfs: bfs.cpp
	$(CC) $(CC_FLAGS) bfs.cpp -o bfs $(LINKER_FLAGS)

bfs_offload: bfs.cpp
	$(ICC) $(CC_FLAGS) -DOMP_OFFLOAD bfs.cpp -o bfs_offload

clean:
	rm -f bfs bfs_offload result.txt
