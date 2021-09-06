#!/bin/bash

paste <(cat /sys/devices/system/cpu/cpu*/cpufreq/cpuinfo_min_freq) <(cat /sys/devices/system/cpu/cpu*/cpufreq/cpuinfo_cur_freq) <(cat /sys/devices/system/cpu/cpu*/cpufreq/cpuinfo_max_freq) | column -s $'\t' -t
