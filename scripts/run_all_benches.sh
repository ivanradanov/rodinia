#!/usr/bin/env bash

HOST=memkf02

NRUNS=5
NRUNS_SCALING=2

THREAD_NUMS="1 2 4 8 16"
THREAD_NUMS_OPENMP="1 2 4 8 16"


#DATE="$(date -Ins)"
#LOG_FILE="~/tmp/all_benches_log_$DATE.log"

MAX_THREAD_TEST_CONFIGS="53 12"
SCALING_TEST_CONFIGS="53 12"

echo ----------------------------------------------
echo Start "$(date -Ins)"
echo ----------------------------------------------

rm -r results/

./scripts/enable-config.sh common/host.make.config common/$HOST.polygeist.host.make.config

echo Max thread tests
for i in $MAX_THREAD_TEST_CONFIGS; do
	echo Compiling configuration $i...
	make cuda_clean &> /dev/null
	make CONFIG="$i" MY_VERIFICATION_DISABLE=1 cuda &> /dev/null

	echo Running configuration $i...
	./scripts/run_timed_cuda_n_times.sh $NRUNS | grep -B1 FAIL

done

echo Scaling tests cuda
for i in $SCALING_TEST_CONFIGS; do
	echo Compiling configuration $i...
	make cuda_clean &> /dev/null
	make CONFIG="$i" MY_VERIFICATION_DISABLE=1 cuda &> /dev/null

	echo Running configuration $i...
	./scripts/run_scaling_test.sh "./scripts/run_timed_cuda_n_times.sh $NRUNS_SCALING" $THREAD_NUMS | grep -B1 FAIL
done

echo Finished cuda "$(date -Ins)"

echo Scaling tests openmp

./scripts/enable-config.sh common/openmp.host.make.config common/$HOST.polygeist-clang.openmp.host.make.config
make omp_clean &> /dev/null
make omp &> /dev/null
./scripts/run_timed_openmp_n_times.sh $NRUNS | grep -B1 FAIL
./scripts/run_scaling_test.sh "./scripts/run_timed_openmp_n_times.sh $NRUNS_SCALING" $THREAD_NUMS_OPENMP | grep -B1 FAIL

#./scripts/enable-config.sh common/openmp.host.make.config common/$HOST.polygeist.openmp.host.make.config
#make omp_clean &> /dev/null
#make omp &> /dev/null
#./scripts/run_timed_openmp_n_times.sh $NRUNS | grep -B1 FAIL
#./scripts/run_scaling_test.sh "./scripts/run_timed_openmp_n_times.sh $NRUNS_SCALING" $THREAD_NUMS_OPENMP | grep -B1 FAIL

#./scripts/enable-config.sh common/openmp.host.make.config "common/$HOST.polygeist.openmp.openmp-opt=0.host.make.config"
#make omp_clean &> /dev/null
#make omp &> /dev/null
#./scripts/run_scaling_test.sh "./scripts/run_timed_openmp_n_times.sh $NRUNS_SCALING" $THREAD_NUMS_OPENMP | grep -B1 FAIL
#./scripts/run_timed_openmp_n_times.sh $NRUNS | grep -B1 FAIL

echo COPYING RESULTS, DONT QUIT
RESULTS="rodinia_results_$HOSTNAME_$(date -Ins)"
mkdir -p "$HOME/rodinia_results/$RESULTS"
cp -a results "$HOME/rodinia_results/$RESULTS"
cd "$HOME/rodinia_results/"
zip -r "$RESULTS" "$RESULTS/results/openmp/out/" "$RESULTS/results/cuda/out/"

echo Finished "$RESULTS"

#echo COPYING RESULTS, DONT QUIT
#mkdir ~/rodinia_results/
#rsync -a --remove-source-files results ~/rodinia_results/
#echo Finished "$(date -Ins)"

