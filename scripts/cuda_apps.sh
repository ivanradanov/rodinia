#!/bin/bash

# no verification: dwt2d hybridsort kmeans leukocyte mummergpu
# no timing: dwt2d hybridsort kmeans leukocyte mummergpu
# not working with cpucuda: dwt2d huffman hybridsort kmeans leukocyte mummergpu srad/srad_v1

echo -n backprop ""
echo -n bfs ""
echo -n b+tree ""
echo -n cfd ""
#echo -n dwt2d "" # cpucuda hangs
echo -n gaussian ""
echo -n heartwall ""
echo -n hotspot ""
echo -n hotspot3D ""
#echo -n huffman "" # cpucuda hangs
#echo -n hybridsort "" # cpucuda unable to compile
#echo -n kmeans "" # cpucuda ubable to compile
echo -n lavaMD ""
#echo -n leukocyte "" # no timing, no verification
echo -n lud ""
#echo -n mummergpu "" # cpucuda unable to compile
echo -n myocyte ""
echo -n nn ""
echo -n nw ""
echo -n particlefilter ""
echo -n pathfinder ""
#echo -n srad/srad_v1 "" # cpucuda hangs
echo -n srad/srad_v2 ""
echo -n streamcluster ""

exit
