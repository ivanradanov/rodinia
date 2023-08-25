#!/bin/bash

echo cfd
echo gaussian
echo particlefilter
echo lavaMD
echo streamcluster
echo lud
echo backprop
echo bfs
echo hotspot
echo hotspot3D
echo myocyte
echo nn
echo nw
echo pathfinder
echo srad_v1
exit

# Mem2Reg hang
echo heartwall

# Uses inheritance - not yet supported
echo huffman

# Undeterministic behaviour, thus excluded
echo dwt2d
echo srad_v2

# Buggy code - race condition
echo b+tree

# Textures
echo hybridsort
echo kmeans
echo leukocyte
echo mummergpu

exit
