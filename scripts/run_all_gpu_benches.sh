#!/usr/bin/env bash

ORIGINAL_ARGS="$@"

VALID_ARGS=$(getopt -o h --long dry-run,targets:,clang,hip-clang,nvcc,nruns:,pgo-prof-nruns:,pgo-configs:,host:,configs: -- "$@")
if [[ $? -ne 0 ]]; then
  exit 1;
fi

# Default vals
NRUNS=5
PGO_PROF_NRUNS=3

eval set -- "$VALID_ARGS"
while [ : ]; do
  case "$1" in
    --pgo-prof-nruns)
      echo "Do $2 PGO profiling runs"
      PGO_PROF_NRUNS="$2"
      shift 2
      ;;
    --targets)
      echo "Targets: $2"
      TARGETS="$2"
      shift 2
      ;;
    --pgo-configs)
      echo "Run PGO profile and optimize '$2'"
      PGO_PROF="1"
      PGO_OPT="1"
      PGO_CONFIGS="$2"
      shift 2
      ;;
    --host)
      echo "Use '$2' host config"
      HOST="$2"
      shift 2
      ;;
    --nruns)
      echo "Run $2 times"
      NRUNS="$2"
      shift 2
      ;;
    --configs)
      echo "Run '$2' configs"
      TEST_CONFIGS="$2"
      shift 2
      ;;
    --dry-run)
      echo "Dry run"
      DRY_RUN="1"
      shift
      ;;
    --clang)
      echo "Run clang"
      RUN_CLANG=1
      shift
      ;;
    --hip-clang)
      echo "Run hip compiled by clang"
      RUN_HIP_CLANG=1
      shift
      ;;
    --nvcc)
      echo "Run nvcc"
      RUN_NVCC=1
      shift
      ;;
    -h)
      echo "todo usage"
      shift
      ;;
    --)
      shift
      break
      ;;
    *)
      break
      ;;
  esac
done

echo -n "Run the following CUDA benchmarks: "
./scripts/cuda_apps.sh
echo

echo -n "Run the following HIP benchmarks: "
./scripts/hip_apps.sh
echo

if [ "$DRY_RUN" == "1" ]; then
  exit
fi

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

RODINIA_ROOT_DIR="$DIR/../"

echo ----------------------------------------------
echo Start "$(date -Ins)"
echo ----------------------------------------------

RESULTS_DIR="$RODINIA_ROOT_DIR/results/"
rm -r "$RESULTS_DIR"

COMPILATION_LOG_DIR="$RESULTS_DIR/compilation/"
mkdir -p "$COMPILATION_LOG_DIR"
PGO_RESULT_DIR="$RESULTS_DIR/pgo/"
mkdir -p "$PGO_RESULT_DIR"

echo "$ORIGINAL_ARGS" > "$RESULTS_DIR/cmd"
echo "CUDA Benchmarks:" >> "$RESULTS_DIR/cmd"
./scripts/cuda_apps.sh >> "$RESULTS_DIR/cmd"
echo "HIP Benchmarks:" >> "$RESULTS_DIR/cmd"
./scripts/hip_apps.sh >> "$RESULTS_DIR/cmd"

LOGFILE="$RESULTS_DIR/logfile"

./scripts/enable-config.sh common/host.make.config common/$HOST.polygeist.host.make.config

if [ "1" = "$RUN_CLANG" ]; then
  echo Starting clang "$(date -Ins)" | tee $LOGFILE
  echo Compiling clang | tee $LOGFILE
  make cuda_clean &> /dev/null
  make CONFIG=0 MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null

  echo Running clang... | tee $LOGFILE
  ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL | tee $LOGFILE

  echo Finished clang cuda "$(date -Ins)" | tee $LOGFILE
fi

if [ "1" = "$RUN_HIP_CLANG" ]; then
  echo Starting hip-clang "$(date -Ins)" | tee $LOGFILE
  echo Compiling hip-clang | tee $LOGFILE
  make hip_clean &> /dev/null
  make CONFIG=0 API=HIP MY_VERIFICATION_DISABLE=1 hip -kj &> /dev/null

  echo Running hip-clang... | tee $LOGFILE
  ./scripts/run_hip_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL | tee $LOGFILE

  echo Finished hip-clang "$(date -Ins)" | tee $LOGFILE
fi


for target in $TARGETS; do
  echo Starting target $target "$(date -Ins)" | tee $LOGFILE

  for i in $TEST_CONFIGS; do
    echo Compiling polygeist configuration $i... | tee $LOGFILE
    make cuda_clean &> /dev/null
    make CONFIG="$i" TARGET=$target MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null

    echo Running polygeist configuration $i... | tee $LOGFILE
    ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL | tee $LOGFILE
  done

  if [ "$PGO_PROF" == "1" ]; then
    for i in $PGO_CONFIGS; do
      PGO_DIR="$PGO_RESULT_DIR/$target/$i/"
      mkdir -p "$PGO_DIR"
      echo Compiling polygeist configuration $i for profiling... | tee $LOGFILE
      make cuda_clean &> /dev/null
      COMPILATION_LOG="$COMPILATION_LOG_DIR/polygeist_pgo_prof-$target-$i.log"
      MAX_ALTS=$(POLYGEIST_GPU_ALTERNATIVES_PRINT_INFO=1 make POLYGEIST_ALTERNATIVES_MODE=pgo_prof CONFIG="$i" TARGET=$target MY_VERIFICATION_DISABLE=1 cuda -Orecurse -kj 2>&1 | tee "$COMPILATION_LOG" | grep -E "Generated ([0-9]+) alternatives" | sed --expression='s/Generated //' | sed --expression='s/ alternatives//' | sort -n | tail -1)
      ALTS=$(seq 0 $(($MAX_ALTS - 1)))
      POLYGEIST_PGO_DATA_DIR="$PGO_DIR" ./scripts/profile_alts_n_times.py --nruns $PGO_PROF_NRUNS --command ./run_big --compilation_log "$COMPILATION_LOG" | tee $LOGFILE
    done
  fi

  if [ "$PGO_OPT" == "1" ]; then
    for i in $PGO_CONFIGS; do
      PGO_DIR="$PGO_RESULT_DIR/$target/$i/"
      echo Compiling polygeist configuration $i pgo... | tee $LOGFILE
      make cuda_clean &> /dev/null
      COMPILATION_LOG="$COMPILATION_LOG_DIR/polygeist_pgo_opt-$target-$i.log"
      POLYGEIST_PGO_DATA_DIR="$PGO_DIR" \
        make POLYGEIST_ALTERNATIVES_MODE=pgo_opt CONFIG="$i" TARGET=$target MY_VERIFICATION_DISABLE=1 cuda -Orecurse -kj &> "$COMPILATION_LOG"
      echo Running polygeist configuration $i pgo... | tee $LOGFILE
      ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL | tee $LOGFILE
    done
  fi

  echo Finished target $target "$(date -Ins)" | tee $LOGFILE

done

echo Finished polygeist and clang cuda "$(date -Ins)" | tee $LOGFILE

if [ "1" = "$RUN_NVCC" ]; then
  ./scripts/enable-config.sh common/host.make.config common/$HOST.nvcc.host.make.config

  echo Compiling nvcc | tee $LOGFILE
  make cuda_clean &> /dev/null
  make MY_VERIFICATION_DISABLE=1 cuda -kj &> /dev/null

  echo Running nvcc... | tee $LOGFILE
  ./scripts/run_timed_cuda_big_n_times.sh $NRUNS 2>&1 | grep -B2 FAIL | tee $LOGFILE

  echo Finished nvcc cuda "$(date -Ins)" | tee $LOGFILE
fi

echo COPYING RESULTS, DONT QUIT | tee $LOGFILE
RESULTS="rodinia_results_$HOSTNAME_$(date -Ins)"
mkdir -p "$HOME/rodinia_results/$RESULTS"
cp -a "$RESULTS_DIR" "$HOME/rodinia_results/$RESULTS"
cd "$HOME/rodinia_results/"
#zip -r "$RESULTS" "$RESULTS/results/cuda/out/"

echo Finished "$RESULTS" | tee $LOGFILE
