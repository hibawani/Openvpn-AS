#!/bin/bash

clear
echo "   ___         _    ___  ___ ____   "
echo "  / __|___ _ _| |_ / _ \/ __|__  |  "
echo " | (__/ -_) ' \  _| (_) \__ \ / /   "
echo "  \___\___|_||_\__|\___/|___//_/    "
echo " OpenVPN Access Server With Unlimited License"

sudo yum check-update
sudo yum clean all -y
yum update -y
yum install net-tools -y
sudo dnf install libnsl -y
sudo dnf install ncurses-compat-libs -y
sudo dnf install ncurses-libs -y
rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
rm /usr/local/openvpn_as/lib/python2.7/site-packages/pyovpn-2.0-py2.7.egg
cp pyovpn-2.0-py2.7.egg /usr/local/openvpn_as/lib/python2.7/site-packages/
cd /usr/local/openvpn_as/bin
./ovpn-init

echo "=========================DONE=============================="
echo "SETUP ADMIN PASSWORD"

passwd openvpn

echo "=========================DONE=============================="
