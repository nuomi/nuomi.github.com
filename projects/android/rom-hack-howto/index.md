---
layout: page
title: "Android Rom Structure Explain and Hack tips"
group: android
description: ""
---
{% include JB/setup %}

#Bootloader

Different manufacturers handle the bootloader differently, and it can even vary from one software version to the next. The bootloader may be a barrier to installing custom ROMs, but it is also of fundamental importance to the function of your phone.

HTC also uses NAND lock which prevents root, and in turn bootloader access.

The bootloader usually lives on the system board in non-volatile memory and is often specific to a device.

If you can't unlock the bootloader, you can't change the stock recovery, and you can't install custom ROMs.

Manufacturers usually update to protect the bootloaders, or may rely on technologies like NAND lock to keep users out. 

#CWM & recovery

**ClockworkMod**, abbreviated as CWM, is a popular custom recovery for Android phones and tablets developed by Koushik Dutta (Koush), a well-known name in the Android dev community. ClockworkMod recovery allows you to perform several advanced recovery, restoration, installation and maintenance operations on your Android device that aren’t possible with the stock recovery, and is one of the most common ways used to gain root access, back up device data, install a custom ROMs, kernels, themes, mods and more. However, for anyone new to Android customization and hacking, some of its options might prove to be a tad confusing. In what follows, we will cover all that this recovery is capable of doing, and how to do it.

**About Android Recovery**

All Android devices ship with a recovery console that is basically a partition on the device’s internal memory and can be booted into. The stock recovery of almost all Android devices provides a few basic yet handy options that allow you to factory reset your device and also to recover its operating system using an official ROM in zip format, but that’s all you can do with it. That’s where a custom recovery comes handy.

A custom Android recovery basically replaces the stock recovery with one that lets you do all you can do with the stock recovery, plus a plethora of more options to give you a lot more control on your device. With a custom recovery, you can install official and unofficial ROMs as well as other updates including apps, themes, kernels etc. using zip files, wipe not just user data but pretty much every partition on your device, mount the storage card for USB mass storage access without leaving recovery, partition your SD card, wipe Dalvik cache and battery stats, fix permissions, perform, manage and restore backups and so on.

**Introduction To ClockworkMod**

ClockworkMod recovery is one of the most widely used custom Android recoveries that is available for most mainstream Android devices. It is our custom recovery of choice here at AddictiveTips and almost every custom ROM that we install on our devices is done using this recovery.

ClockworkMod recovery has been developed by Koushik Dutta (also known as Koush) – the same guy who brought us the Android ROM Manager. He can be found at his blog hacking away at Android devices and at Twitter.

**CWM options explained:**

[[REF] CWM - Clockworkmode menu options & Partitions– GENERAL KNOWLEDGE - xda-developers]( http://forum.xda-developers.com/showthread.php?t=1542857)


# HBOOT/FASTBOOT/RECOVERY

__HBOOT__ is bootloader. It lives inside NAND's first partition, mtd0 (if partition map is MTD). It is loaded in memory (RAM) when device is switched ON. Its jobs are:

* Check the Hardware.
* Initialize the Hardware.
* Start the Operating System (Either Android or Recovery).
* HBOOT can also support doing more than this like flashing ROMs.

Something More: Nandroid backup and restore don't touch HBOOT.

__HBOOT__ is manufacturer specific term.. generally used by HTC. 

__Fastboot__ is protocol used to update the flash filesystem in Android devices from a host over USB. It allows flashing of unsigned partition images. It is disabled in the production G1 devices since USB support is disabled in the bootloader[1]. This can be changed if you get root on the device. See also [2] Source(s): Android solutions

	usage: fastboot [ <option> ] <command>

	commands:
	 update <filename>                        reflash device from update.zip
	 flashall                                 'flash boot' + 'flash system'
	 flash <partition> [ <filename> ]         write a file to a flash partition
	 erase <partition>                        erase a flash partition
	 getvar <variable>                        display a bootloader variable
	 boot <kernel> [ <ramdisk> ]              download and boot kernel
	 flash:raw boot <kernel> [ <ramdisk> ]    create bootimage and flash it
	 devices                                  list all connected devices
	 reboot                                   reboot device normally
	 reboot-bootloader                        reboot device into bootloader

	options:
	 -w                                       erase userdata and cache
	 -s <serial number>                       specify device serial number
	 -p <product>                             specify product name
	 -c <cmdline>                             override kernel commandline


Developers who are creating new images to try out very often can remove their boot and recovery images which will force the phone to enter bootloader mode every time you boot. To fix this, you would reflash the boot and recovery images back allowing the phone to boot normally.

	$ fastboot erase boot
	$ fastboot erase recovery

# CID


#SPL

#CyanogenMod

CyanogenMod is an aftermarket firmware for a number of cell phones based on the open-source Android operating system. It offers features not found in the official Android based firmwares of vendors of these cell phones.

#AOSP

AOKP stands for Android Open Kang Project. It is a custom ROM distribution for many Android devices. The name is a play on the word “kang” and AOSP (Android Open Source Project). The name was sort of a joke, but it just stuck, just like our infatuation with unicorns.

#ASOP

Android Open Source Project

#ADB

"Android Debug Bridge (adb) is a versatile tool lets you manage the state of an emulator instance or Android-powered device."

quite a few Linux commands can be sent via the adb server (the one running on your computer) to the adb client (the one running on your phone) and they will be executed. 

#Baseband

Baseband is the Radio or Modem version depending upon the Phone Model, Carrier and Android Software Stack version. 

The Radio/Modem file is flashed via Recovery tool (other options are ADB/ODIN). The mismatched Radio/Modem and ROM will lead to things not working. You need to find the matching Radio/Modem for the particular ROM you are running.

The radio firmware controls basic low-level functions like network connectivity, Wi-Fi, and GPS. Upgrading Radio firmware will fix connectivity issues, increase range or performance, decrease battery usage, etc. Incorrec tRadio frimeware can disable some functions in your phone such as MMS, 3G Data, VM Notifications, etc. Network operators/carriers select the correct version of the Radio firmware that is suitable for the phone, network and bandwidth.

#Deodexing Explained + How To

# Android Kitchen

This is a ROM customization kitchen used for Android devices made by manufacturers such as HTC, Samsung and many others.

Downloading the kitchen:

https://github.com/dsixda/Android-Kitchen.git

From GitHub, simply click on the "Tags" link on the top. An archive of previous versions are also tagged there.

A list of supported devices, as well as release notes, setup instructions and FAQ are all found here:

http://bit.ly/U4I7LY

![kitchen](http://bit.ly/S3NcEB)

# UOT Kitchen

http://uot.dakra.lt/

Customise your Android device with this online tool
Select any mods, upload files and submit to kitchen

Kitchen features:

    * New ApkTools for better ICS and JB roms support (NEW!)
    * Battery mod for ICS and JB roms (NEW!)
    * Notification window for qhd/hdpi/mdpi/ldpi roms
    * Bootanimations for qhd/hdpi/mdpi/ldpi roms
    * Flashing folders for system files
    * Additional patch to fix images
    * Custom battery for MIUI rom
    * Settings download/upload
    * Support for TouchWiz roms
    * Quick settings tab
    * Lockscreen pattern
    * Lockscreen lense style
    * Lockscreen rotating style
    * Lockscreen sliding tabs
    * Lockscreen icons
    * Custom loading circle
    * Custom list dividers
    * Pulldown background animation
    * Volume and Download bar customization
    * Flashing script for Data++ Roms
    * Popup windows customization
    * Support for stock odexed roms
    * Support for GB roms with Sense
    * Optional Theme preview
    * Overscroll glowing
    * Font packs
    * Supporting Theme Chooser for CM7 roms
    * Enable transparency in status bar for GB roms
    * Supporting Gingerbread roms
    * Edify and Amend installation script
    * Supporting hdpi/mdpi/ldpi roms
    * Patch9 images auto-fix
    * Super Circle Battery with %, version [A-P]
    * Custom style battery, version Z
    * Themed icons for status bar
    * Uni-color icons
    * Customizable notification drop-down window
    * Bootanimation changer
    * Corrected files for popular roms/themes
    * Showing battery % while charging
    * Custom charging animations
    * Windows animations
    * Icons for Notification Power Buttons

#Goldfish Kernel Compile

	git clone https://android.googlesource.com/kernel/goldfish.git goldfish
	cd goldfish

Put the cross compilation toolchain into your path and also put the tools (emulator, android tools etc) in your path:

	export PATH=$PATH:~/bin:~/bin/src/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin:/root/bin/src/out/host/linux-x86/bin
	make ARCH=arm goldfish_defconfig
	make ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-eabi- -j4

[This](http://code.google.com/p/android-kernel-analysis/wiki/KernelBuildErrors) is a good resource on different errors you could encounter. If you get a message “zImage is ready” you are good to load this image into the emulator to have a running emulator.

#RK3066 Linux Kernel Compile

install Linaro packages from the [Linaro Toolchain backports PPA](https://launchpad.net/~linaro-maintainers/+archive/toolchain)

    sudo add-apt-repository ppa:linaro-maintainers/toolchain
    sudo apt-get update
    sudo apt-get install gcc-arm-linux-gnueabi

    sudo apt-get install uboot-mkimage

download and compile kernel source

    git clone https://github.com/omegamoon/rockchip-rk30xx-mk808.git
    cd rockchip-rk30xx-mk808
    make -j 8 CROSS_COMPILE=arm-linux-gnueabi-

    or:
    make uImage -j 8 CROSS_COMPILE=arm-linux-gnueabi-
    make modules -j 8 CROSS_COMPILE=arm-linux-gnueabi-

#RK3066 Tools

There are also some tools available for RK29xx & RK3066 (rktools) mainly to modify ROMs which you can retrieve and build as follows:

    git clone https://github.com/rk3066/rk-tools.git
    cd rk-tools
    sudo apt-get install libssl-dev libcrypto++-dev
    make

This will generate 4 tools:

* afptool – Tool to unpack and pack the firmware files

        afptool -pack xxx update.img
        afptool -unpack update.img xxx

* img_maker – Tool to create rkimage files (and it seems to convert the old firmware format to the new firmware format)

        img_maker [-rk30|-rk29] [loader] [major version] [minor version] [subversion] [old image] [out image]

* img_unpack – A tool to unpack (new format) firmware images

        ./img_unpack <source> <destination>

* mkkrnlimg – Tool to pack and unpack Kernel images (Also part of omegamoon github account in binary form).

        ./mkkrnlimg [-a|-r] <input> <output>

Another tools call rkflashtool can be used to reflash the NAND. The source code is here, and it’s for RK29xx / RK28xx processor, but RK3066 modding instructions are available. “This tool uses a low level protocol supported by the internal bootloader of the RK processor. Because of that, this tool doesn’t need anything to be present on NAND flash, and can be used to successfully reflash bricked tablets”. See Arctablet for details.

Finally Romdump allows you to dump RK3066 ROM to an SD card, check Vondroid for details.

Sorry, if the usage for each tool is not very clear, but it’s just not obvious to me either, and I could not find a wiki or tutorial to use them. So if any reader has already worked with those, better descriptions or links to tutorials/wikis are welcome.

Read more: http://www.cnx-software.com/tag/rockchip/#ixzz2DfvsQius

# Kernel test in emulator

	export ANDROID_SWT=/root/bin/src/prebuilt/linux-x86_64/swt
	android list targets

After you get the right ANDROID platform you can issue the following commands:

	android create avd -n my_android1.5 -t 1
	emulator -kernel ~/bin/kern/kernel-common/goldfish/arch/arm/boot/zImage -show-kernel -verbose @my_android1.5 

Now you should have a running emulator with your shiny new kernel.

# kernel Test on device

	fastboot boot new_kernel

this temporarily downloads a new kernel and boot using that without touching the boot-loader's own boot.


# Kernel modules compile

use android-ndk as cross compile toolchain.
download android ndk for android. and use build/tools/build-platforms.sh to build android-14 toolchain.

download rk3066 kernel. and add -fno-pic of KBUILD_CFLAGS in Makefile

then you can make modules with it.

	#mark the module you want to compile.
	CROSS_COMPILE=your toolchainpath/android-14/bin/arm-linux-androideabi
	make menuconfig

	#compile moduls
	CROSS_COMPILE=your toolchainpath/android-14/bin/arm-linux-androideabi
	make modules

# Kernel Modules test

	/root/bin/src/out/host/linux-x86/bin/adb shell mount
	/root/bin/src/out/host/linux-x86/bin/adb push hello.ko /data
	/root/bin/src/out/host/linux-x86/bin/adb insmod /data/hello.ko

# Test filesystem on device

# kernel compile in android source tree

# android bluetooth stack explain

# BACKUP USERDATA, SYSTEM, HIDDEN PARTITIONS

since typical mtd partition table is:

	dev:    size   erasesize  name
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

so after adb shell:

	# mkdir /sdcard
	# mount -t vfat /dev/block/mmcblk0p1 /sdcard
	# mount -t yaffs2 /dev/block/mtdblock7 /system
	# mkyaffs2image /system /sdcard/system.img

	# mkdir /data
	# mount -t yaffs2 /dev/block/mtdblock9 /data
	# mkyaffs2image /data /sdcard/data.img

	# mkdir /hidden
	# mount -t yaffs2 /dev/block/mtdblock5 /hidden
	# mkyaffs2image /data /sdcard/hidden.img


# RESTORE ROMS BY USING FASTBOOT

__Important: Don't flash hidden partition by using fastboot.If you flash hidden partition by using fastboot, you will get a empty hidden partion.__

Reboot your mobile into fastboot mode, For example, to restore boot partition:

	fastboot flash boot boot.img

and then reboot:

	fastboot reboot

if you want to erase specified partition:

	fastboot erase [partition name]

of boot with specify boot image:

	fastboot boot [image name]

