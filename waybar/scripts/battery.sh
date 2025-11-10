#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT1/capacity)
status=$(cat /sys/class/power_supply/BAT1/status)

# Nerd Font battery icons
if [[ $capacity -ge 95 ]]; then
    icon="󰁹"; level="full"
elif [[ $capacity -ge 90 ]]; then
    icon="󰂂"; level="90"
elif [[ $capacity -ge 80 ]]; then
    icon="󰂁"; level="80"
elif [[ $capacity -ge 70 ]]; then
    icon="󰂀"; level="70"
elif [[ $capacity -ge 60 ]]; then
    icon="󰁿"; level="60"
elif [[ $capacity -ge 50 ]]; then
    icon="󰁾"; level="50"
elif [[ $capacity -ge 40 ]]; then
    icon="󰁽"; level="40"
elif [[ $capacity -ge 30 ]]; then
    icon="󰁼"; level="30"
elif [[ $capacity -ge 20 ]]; then
    icon="󰁻"; level="20"
elif [[ $capacity -ge 10 ]]; then
    icon="󰁺"; level="10"
else
    icon="󰂃"; level="critical"
fi

# Override icon if charging
if [[ "$status" == "Charging" ]]; then
    icon="󰂄"
    level="charging"
fi

# Output JSON
echo "{\"text\": \"$icon $capacity%\", \"class\": \"$level\"}"

