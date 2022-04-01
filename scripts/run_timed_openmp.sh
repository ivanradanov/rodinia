#!/usr/bin/env bash

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

"$DIR/run_timed_common.sh" "openmp" "backprop bfs b+tree cfd hotspot hotspot3D lud myocyte nw particlefilter pathfinder streamcluster srad/srad_v1 srad/srad_v2" ./run

#"$DIR/run_timed_common.sh" "openmp" "backprop bfs b+tree cfd heartwall hotspot hotspot3D lavaMD lud myocyte nw particlefilter pathfinder streamcluster nn srad/srad_v1 srad/srad_v2" ./run
