#!/usr/bin/env bash

#set -x

SUBDIR="$1"

bm="$2"

run_script="$3"

TIMEOUT_CMD="timeout --kill-after=5m 5m"

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

RODINIA_ROOT_DIR="$DIR/../"

RODINIA_APP_DIR="$RODINIA_ROOT_DIR/$SUBDIR/"

OUTDIR="$RODINIA_ROOT_DIR/results/$SUBDIR/"

DATE="$(date -Ins)"

mkdir -p "$OUTDIR/out/"
mkdir -p "$OUTDIR/log/"

OUTFILE="$OUTDIR/out/$DATE.out"
LOGFILE="$OUTDIR/log/$DATE.log"

# clean output files
echo -n > "$OUTFILE"
echo -n > "$LOGFILE"

export MY_TIMING_FILE="$OUTFILE"


for b in $bm; do
    echo -------------- running "$b" @ "$(date -Ins)" -------------- | tee -a "$LOGFILE"
    cd "$RODINIA_APP_DIR/$b"

    export MY_APP_NAME="$(echo -n "$b" | tr / .)"

    ( $TIMEOUT_CMD "$run_script" || echo "FAILED OR TIMED OUT" ) 2>&1 | tee -a "$LOGFILE" | tee >( grep "FAILED OR TIMED OUT" > /dev/null && echo "FAILED OR TIMED OUT" > /dev/tty ) | (grep "result: FAIL" > /dev/null && echo "VERIFICATION FAILED")
    true
done

