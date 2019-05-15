#!/usr/bin/sh
if [ $1 -le `cat /sys/class/backlight/intel_backlight/max_brightness` ]; then
	echo $1 > /sys/class/backlight/intel_backlight/brightness
fi
