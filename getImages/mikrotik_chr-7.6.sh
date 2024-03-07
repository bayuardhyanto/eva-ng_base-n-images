#!/bin/sh

sudo apt update
sudo apt install -y unzip curl wget

mikrotik_image7='chr-7.14.img'


mkdir -p /opt/unetlab/addons/qemu/mikrotik-7.14/

cd /opt/unetlab/addons/qemu/mikrotik-7.14/

wget https://download.mikrotik.com/routeros/7.14/chr-7.14.img.zip

unzip -v chr-7.14.img.zip
mv chr-7.14.img chr-7.14.qcow2

/opt/unetlab/wrappers/unl_wrapper -a fixpermissions

rm -rf chr-7.14.img.zip 

echo "Ok"

exit 0
