#!/bin/sh

iceweasel > /dev/null 2>&1 &

# Process ID of the process we just launched
PID=$!

# Window ID of the process...pray that there's     
# only one window! Otherwise this might break.
# We also need to wait for the process to sawm
# a window.

sleep 1
WID=$(wmctrl -lp | grep $PID | cut "-d " -f1)

# Set the size and location of the window
# See man wmctrl for more info
wmctrl -i -r $WID -e 0,3840,0,250,250
