#!/usr/bin/env bash

#set -x

TIMEOUT_CMD="timeout 1m"

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

RODINIA_ROOT_DIR="$DIR/../"

RODINIA_CUDA_DIR="$RODINIA_ROOT_DIR/cuda/"

OUTDIR="$RODINIA_ROOT_DIR/results/timed_cuda/"

mkdir -p "$OUTDIR"

DATE="$(date -Ins)"

OUTFILE="$OUTDIR/$DATE.out"
LOGFILE="$OUTDIR/$DATE.log"
# clean output file
echo -n > "$OUTFILE"

export MY_TIMING_FILE="$OUTFILE"

bm="backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman lavaMD lud myocyte nn nw particlefilter pathfinder srad/srad_v1 srad/srad_v2 streamcluster"

for b in $bm; do
    echo -------------- running "$b" @ "$(date -Ins)" -------------- | tee -a "$LOGFILE"
    cd "$RODINIA_CUDA_DIR/$b"

    $TIMEOUT_CMD ./run &>> "$LOGFILE" || echo "FAILED OR TIMED OUT"
done

