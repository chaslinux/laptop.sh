# laptop.sh
Bash script to detect important Laptop-specific hardware for Ubuntu-based refurbishers

Copyright 2022 Charles McColm, chaslinux@gmail.com
Licensed under GPLv3, The General Public License v3.0

Refurbishing Laptops comes with some extra challenges, batteries may not hold a full charge, 
the same general model may have multiple screen resolutions, and dealing with BIOS passwords 
isn't as simple as on desktops. This script produces information to help Linux laptop 
refurbishers more easily determine things that might need to be replaced, discarded, or 
just given to the client (50% original battery capacity).

Run this script as a normal user (not sudo). In the folder containing laptop.sh run:

./laptop.sh

You will be prompted for the password of the sudo user (which you should be logged in as).

If you find this script helpful please drop me an email so I know it's been useful.

This script is evolving as I test new hardware.
