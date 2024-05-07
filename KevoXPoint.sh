#!/usr/bin/env bash
# Purpose: Display the ARM CPU and GPU TEMPERATURE of Raspberry Pi 4 Model B or XPoint
# Script creado by Kevo.THRASHER
cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(date) @ $(hostname)"
echo "----------------------------------------"
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
echo "CPU => $((cpu/1000))'C"
