#!/usr/bin/env bash

# Terminate already running polybar- & XFCE-Bar instances
killall polybar &
xfce4-panel -q

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c $(dirname $0)/config.ini &
