#!/usr/bin/env bash

#set -x

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

"$DIR/run_timed_common.sh" "cuda" "backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman lavaMD lud myocyte nn nw particlefilter pathfinder srad/srad_v1 srad/srad_v2 streamcluster"
