#!/bin/sh

sudo apt update
sudo apt install -y unzip curl wget

mkdir /opt/unetlab/addons/qemu/win-10pro_64_22H2_int/

cd /opt/unetlab/addons/qemu/win-10pro_64_22H2_int/

wget -O cdrom.iso https://software.download.prss.microsoft.com/dbazure/Win10_22H2_EnglishInternational_x64v1.iso

/opt/qemu/bin/qemu-img create -f qcow2  virtioa.qcow2 50G
