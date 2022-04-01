#!/usr/bin/env bash

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

TARGET="$1"

FILE="$2"

ABS_FILE="$(readlink -f $FILE)"

rm "$TARGET"
ln -s "$ABS_FILE" "$TARGET"
