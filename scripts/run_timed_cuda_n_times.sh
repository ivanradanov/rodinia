#!/bin/bash
set -x

if command -v numactl &> /dev/null
then
	NUMA_CMD="numactl -N 0 -m 0"
fi

for i in $(seq $1); do echo run number $i; $NUMA_CMD ./scripts/run_timed_cuda.sh; done
