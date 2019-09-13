#!/bin/sh


echo "Re-complie vmware application"

echo "change directory to home"

cd ~
ls

echo "change directory to home"
rm ./MOK.priv 
rm ./MOK.der

ls

openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VMware/"

sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmmon)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmnet)

sudo mokutil --import MOK.der