#!/bin/bash

for i in "${@:2}"
do
	echo Running for $i threads...
	OMP_NUM_THREADS=$i $1
done

