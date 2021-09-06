#!/bin/bash

max_freq=2200000

for x in /sys/devices/system/cpu/*/cpufreq/; do
  echo ${max_freq} | sudo tee $x/scaling_max_freq
done
