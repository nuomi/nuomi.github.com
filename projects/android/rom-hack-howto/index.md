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

#CyanogenMod

CyanogenMod is an aftermarket firmware for a number of cell phones based on the open-source Android operating system. It offers features not found in the official Android based firmwares of vendors of these cell phones.


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

