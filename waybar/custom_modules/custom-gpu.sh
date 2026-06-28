#!/bin/bash

raw_clock=$(cat /sys/class/drm/card1/device/pp_dpm_sclk | grep -oE '[0-9]{0,4}Mhz \W' | sed "s/Mhz \*//")
clock=$(echo "scale=1;$raw_clock/1000" | bc | sed -e 's/^-\./-0./' -e 's/^\./0./')

raw_temp=$(cat /sys/class/drm/card1/device/hwmon/hwmon3/temp1_input)
temperature=$(($raw_temp/1000))
busypercent=$(cat /sys/class/hwmon/hwmon3/device/gpu_busy_percent)
deviceinfo=$(glxinfo -B | grep 'Device:' | sed 's/^.*: //')
driverinfo=$(glxinfo -B | grep "OpenGL version")

echo '{"text": "'$clock'GHz <span color=\"#81a1c1\">| '$busypercent'% |</span>  '$temperature'°C", "class": "custom-gpu", "tooltip": "<b>'$deviceinfo'</b>\n'$driverinfo'"}'
