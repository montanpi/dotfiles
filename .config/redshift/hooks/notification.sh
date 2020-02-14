#!/bin/sh
event=$1
case $event in
  period-changed)
    prev_period=$2
    period=$3
    if [ "$period" = "night" ]; then
      exec notify-send -i /usr/share/icons/Numix-Circle/24/panel/redshift-status-on.svg --hint=int:transient:1 "Redshift" "Period changed to ${period}"
    else
      exec notify-send -i /usr/share/icons/Numix-Circle/24/panel/redshift-status-off.svg --hint=int:transient:1 "Redshift" "Period changed to ${period}"
    fi
esac
