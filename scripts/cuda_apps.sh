#!/bin/bash

echo -n cfd ""
echo -n gaussian ""
echo -n particlefilter ""
echo -n lavaMD ""
echo -n streamcluster ""
echo -n lud ""
echo -n backprop ""
echo -n bfs ""
echo -n b+tree ""
echo -n hotspot ""
echo -n hotspot3D ""
echo -n myocyte ""
echo -n nn ""
echo -n nw ""
echo -n pathfinder ""
echo -n srad/srad_v1 ""
exit

# Mem2Reg hang
echo -n heartwall ""

# Uses inheritance - not yet supported
echo -n huffman ""

# Undeterministic behaviour, thus excluded
echo -n dwt2d ""
echo -n srad/srad_v2 ""

# Textures
echo -n hybridsort ""
echo -n kmeans ""
echo -n leukocyte ""
echo -n mummergpu ""

exit
