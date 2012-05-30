GT-S7500 GingerBread Kernel
===========================

Samsung Galaxy ACE Plus Open Source Kernel [GT-S7500]

XDA Developers thread: http://forum.xda-developers.com/showthread.php?t=1674667

How to build the kernel:

It already ships with an configuration  (based on S7500XXLC2 kernel configuration).

If you want to change anything just cd to GT-S7500_Kernel and type 'make menuconfig'

Then type 'make -j2' (replace 2 for the number of cores on your pc)

cd back to the main folder and run './build_final.sh' and the kernel is ready to flash.

Don't rename the output tar.md5 file (if you want change, edit build_final.sh to your liking)
Else it wont flash.
