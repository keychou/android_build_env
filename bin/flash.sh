#!/bin/bash
echo "arguments total: $#"
echo "target device: $1"
echo "target images: $2 $3 $4"

fastboot="out/host/linux-x86/bin/fastboot"
device=$1
shift

adb reboot bootloader

count=1
while [ "$#" -ge "1" ];do
    echo "================try to flash $count/$1================"
    sudo $fastboot flash $1 out/target/product/$device/$1.img
    let count=count+1
    shift
done

sudo $fastboot reboot

#! /usr/bin/expect
#set target [lindex $argv 0]

#set fastboot "out/host/linux-x86/bin/fastboot"

#spawn adb reboot bootloader
#set timeout 30
#spawn sudo out/host/linux-x86/bin/fastboot flash boot out/target/product/msm8909/boot.img
#expect "password"
#send "10089\r"
#spawn sudo $fastboot flash system out/target/product/$target/system.img
#spawn sudo $fastboot flash userdata out/target/product/$target/userdata.img
#spawn sudo $fastboot reboot
