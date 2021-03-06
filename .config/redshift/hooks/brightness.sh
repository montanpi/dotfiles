#!/bin/sh

# Set brightness via xbrightness when redshift status changes

# Set brightness values for each status.
# Range from 1 to 100 is valid
brightness_day="20"
brightness_transition="12"
brightness_night="6"
# Set fade time for changes to one second
fade_time=1000

case $1 in
    period-changed)
case $3 in
    night)
    xbacklight -set $brightness_night -time $fade_time
;;
    transition)

				xbacklight -set $brightness_transition -time $fade_time
				;;
			daytime)
				xbacklight -set $brightness_day -time $fade_time
				;;
		esac
		;;
esac

