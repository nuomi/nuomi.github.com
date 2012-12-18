---
layout: page
title: "Android Rom Structure Explain"
group: android
description: ""
---
{% include JB/setup %}

#hcd file

# Look up partition table of your android device

	$ cat /proc/mtd

this will give you something like:

	mtd0: 00500000 00020000 "boot"
	mtd1: 00200000 00020000 "misc"
	mtd2: 00080000 00020000 "splash"
	mtd3: 00500000 00020000 "recovery"
	mtd4: 00500000 00020000 "ftm"
	mtd5: 01a00000 00020000 "hidden"
	mtd6: 00060000 00020000 "dbgmsk"
	mtd7: 0a000000 00020000 "system"
	mtd8: 00200000 00020000 "misc2"
	mtd9: 05800000 00020000 "cache"
	mtd10: 0ab80000 00020000 "userdata"

#ueventd.rc

ueventd.rc is the android equvivalent of udev rules, but it scope is very limited. It mentions the permissions and the owner of the newly added file in the system. /ueventd.rc is read by the init deamon itself, and it listens on the netlink socket for events from the kernel. This is similar to how udev deamon listens for the events from the kernel.

Few example lines are as follows:

    # Device name       permissions owner   group owner
    /dev/null                 0666   root       root
    /dev/zero                 0666   root       root
    /dev/full                 0666   root       root
    /dev/ptmx                 0666   root       root
    /dev/cam                  0660   root       camera
    /dev/pmem                 0660   system     graphics
    /dev/pmem_adsp*           0660   system     audio
    /dev/pmem_camera*         0660   system     camera
    /dev/oncrpc/*             0660   root       system
    /dev/adsp/*               0660   system     audio
    /dev/snd/*                0660   system     audio

vold (Volume Deamon), netd (Network Deamon) also listen on events from the kernel. vold manages pulling out and plugging in of sdcard and new usb drives mounted via micro USB cable. netd listens on network interface like 3G, WIFI going up and down.

#/system/lib/modules


#/etc/usb_modeswitch.d

 USB_ModeSwitch is (surprise!) a mode switching tool for controlling "flip flop" (multiple device) USB gear.

More and more USB devices (especially high-speed WAN stuff, based on cell phone chipsets containing that feature) have their MS Windows drivers onboard; when plugged in for the first time they act like a flash storage and start installing the driver from there. After installation (and on every consecutive plugging) the driver switches the mode internally, the storage device vanishes (in most cases), and a new device (like an USB modem) shows up. Modem maker "Option" calls that feature "ZeroCD (TM)" since it eliminates the need for shipping a separate driver carrier.

In the beginning, nothing of this was documented in any form and there was hardly any Linux support available.
On the good side, most of the known devices do work in both modes with the available Linux drivers like "usb-storage" or "option" (an optimized serial driver, the Linux standard for high-speed 3G modems).
That leaves only the problem of the mode switching from storage to modem or whatever the thing is supposed to do.

Fortunately there are things like human reason, USB sniffing programs and "libusb". It is possible to eavesdrop the communication of the MS Windows driver, to isolate the command or action that triggers the mode switching and to reproduce the same thing under the rule of Linux or the BSD variants.

USB_ModeSwitch makes this process easy to handle by taking the important parameters from a configuration file and doing all the initialization and communication stuff, with heavy help from "libusb".
It is mainly used automatically - via udev events and rules - to do the switch without any user interaction. But it can also be run as a command line tool, usually when trying to make unknown devices work with it.

This tool is part of most major distributions; you should not be having to install from the source packages here unless you run into problems and need the latest version.
