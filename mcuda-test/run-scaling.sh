#!/bin/bash


DIMS="$1"
THREADS="$2"
NRUNS="$3"

EXES="./polygeist/a.inner-serialize.out ./mcuda/a.out ./polygeist/a.out"

echo mcuda_results = \{
for EXE in $EXES; do
    echo \"$EXE\"\: \{
    for DIM in $DIMS; do
        echo $DIM\: \{
        for THREAD in $THREADS; do
            echo $THREAD\:
            echo -n \[
            for i in $(seq $NRUNS); do
                >&2 echo "$EXE" $DIM "$THREAD" $i
                OMP_NUM_THREADS="$THREAD" taskset -c 0-$(($THREAD-1)) numactl -N 0 -m 0 "$EXE" -wA=$DIM -wB=$DIM -hA=$DIM -hB=$DIM
            done
            echo \],
        done
        echo \},
    done
    echo \},
done
echo \}
