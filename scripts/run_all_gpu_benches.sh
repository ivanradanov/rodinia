#!/usr/bin/env bash

HOST=memkf02

NRUNS=5

#TEST_CONFIGS="0 2 3 4 102 103 104"
#TEST_CONFIGS="0"
TEST_CONFIGS="0 1 2 3 4 5"

echo ----------------------------------------------
echo Start "$(date -Ins)"
echo ----------------------------------------------

rm -r results/

./scripts/enable-config.sh common/host.make.config common/$HOST.polygeist.host.make.config

for i in $TEST_CONFIGS; do
	echo Compiling polygeist configuration $i...
	make cuda_clean &> /dev/null
	make CONFIG="$i" TARGET_GPU=1 MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null

	echo Running polygeist configuration $i...
	./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL

done

echo Finished polygeist cuda "$(date -Ins)"


# NVCC
./scripts/enable-config.sh common/host.make.config common/$HOST.nvcc.host.make.config

echo Compiling nvcc
make cuda_clean &> /dev/null
make MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null

echo Running nvcc...
./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL

echo Finished nvcc cuda "$(date -Ins)"
# NVCC END



echo COPYING RESULTS, DONT QUIT
RESULTS="rodinia_results_$HOSTNAME_$(date -Ins)"
mkdir -p "$HOME/rodinia_results/$RESULTS"
cp -a results "$HOME/rodinia_results/$RESULTS"
cd "$HOME/rodinia_results/"
zip -r "$RESULTS" "$RESULTS/results/cuda/out/"

echo Finished "$RESULTS"

