#!/bin/bash
# Copyright 2022 Charles McColm, chaslinux@gmail.com
# Licensed under GPLv3, The General Pulic License v3.0

# This script detects some extra hardware not on desktop computers.

# check to see if there is a lid, if there is it's a laptop, if not it's a desktop.
if [ -d "/proc/acpi/button/lid" ]; then
	# install necessary extra software
	echo "\section{Laptop Specific}" >> /home/$USER/Desktop/specs.tex
	acpi -V | grep "design capacity" >> /home/$USER/Desktop/specs.tex
	echo "\newline" >> /home/$USER/Desktop/specs.tex
	# display the resolution
	xrandr | grep -m1 connected >> /home/$USER/Desktop/specs.tex
fi
