#!/bin/sh

# Terminate already running bar instances
killall -q polybar

echo "---" | tee -a /tmp/polybar.log
polybar --config=/home/mike/.config/polybar/config.ini toph 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bars launched..."
