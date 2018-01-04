#!/bin/bash
#-----------------------------------------------------------
# A shell script that turns on or off a secondary monitor.
# Indented usage: Map to a custom keyboard shortcut.
# Author: Herman Lundberg. Date: 2018-12-13
#
# To set it up:
# Run xrandr and identify both monitors.
# Run xrandr when the secondary monitor is off and notice the difference in output text
# Copy and paste the text string that is only visible when the monitor is on inside the
# quotation marks after grep.
#-----------------------------------------------------------

#Example: Displayed string when monitor on: DVI-I-2 connected 1280x1024+0+0
#         .. grep "DVI-I-2 connected 1280x1024+0+0" > ..

if (xrandr | grep "Monitor string when on" > /dev/null)
then
	exec xrandr --output DVI-I-2 --off &
else
	exec xrandr --output DVI-I-2 --auto --left-of DVI-I-1
fi
