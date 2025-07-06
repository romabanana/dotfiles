#!/bin/bash

battery() {
  PERC=$(upower -i /org/freedesktop/UPower/devices/battery_axp288_fuel_gauge | awk '/percentage/ {print $2}')
  STATUS=$(upower -i /org/freedesktop/UPower/devices/battery_axp288_fuel_gauge | awk '/state/ {print $2}')
  CHARGING=" "
  [[ $STATUS == "charging" ]] && CHARGING="C"
  echo "$PERC$CHARGING"
}

while true; do
    xsetroot -name "$(battery) | $(date '+%a %d %b %H:%M')    "
    sleep 1
done

