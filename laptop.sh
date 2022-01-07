#!/bin/bash
# Copyright 2022 Charles McColm, chaslinux@gmail.com
# Licensed under GPLv3, The General Pulic License v3.0

# This script detects some extra hardware not on desktop computers.

# install necessary extra software
sudo apt -y install texlive-latex-base # to make pdfs

upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep model >> /home/$USER/Desktop/laptop.tex
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'energy-full-design' >> /home/$USER/Desktop/laptop.tex
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'energy-full:' >> /home/$USER/Desktop/laptop.tex
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep capacity >> /home/$USER/Desktop/laptop.tex

# display the resolution
xrandr | grep -m1 connected >> /home/$USER/Desktop/laptop.tex

