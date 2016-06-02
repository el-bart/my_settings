#!/bin/bash

# no console blanking
setterm -blank 0 -powersave off -powerdown 0
# no screen power saving modes (sets standby, suspend, & off times (in seconds))
xset dpms 0 0 0
# no screensaver
xset s off

# run required window manager
exec /usr/bin/startfluxbox
