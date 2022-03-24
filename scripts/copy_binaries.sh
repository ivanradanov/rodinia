#!/usr/bin/env bash

if [ $# -eq 0 ]
then
    echo usage: copy_binaries.sh root/of/rodinia/tree
    exit 1
fi

TARGET="$1"

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

BM="$($DIR/cuda_apps.sh)"

SUBDIR=cuda
RODINIA_ROOT_DIR="$DIR/../"
RODINIA_APP_DIR="$RODINIA_ROOT_DIR/$SUBDIR/"

for b in $BM; do
    echo copying "$b" binaries...
    cd "$RODINIA_APP_DIR/$b"

    BINARIES=$(cat run | awk '!/^ *#/ && NF' | awk '{print $1}' | sort | uniq)

    echo $BINARIES
    for BIN in $BINARIES; do
        DIRNAME=$(dirname $BIN)
        ACTUAL_TARGET="$TARGET/$SUBDIR/$b/$BIN"
	if [ $# -eq 1 ]
	then
		echo $BIN "->" $ACTUAL_TARGET
		rsync -Pa $BIN $ACTUAL_TARGET
	else
		echo $ACTUAL_TARGET "->" $BIN
		rsync -Pa $ACTUAL_TARGET $BIN
	fi
    done

done
