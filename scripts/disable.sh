#!/bin/bash
for i in {32..127}; do
	echo "Disabling logical HT core $i."
	echo 0 > /sys/devices/system/cpu/cpu${i}/online;
done

echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo


