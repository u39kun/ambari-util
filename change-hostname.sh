#!/bin/bash
# Usage ./change_hostname.sh 1-9
# Author: D.Sen

rm /etc/udev/rules.d/70-persistent-net.rules

#echo "HOSTNAME=dev0$1" > /etc/sysconfig/network
#echo "GATEWAY=10.0.2.2" >> /etc/sysconfig/network

sed -i "s/dev0[[:digit:]]/dev0$1/" /etc/sysconfig/network
sed -i "s/10[[:digit:]]/10$1/" /etc/sysconfig/network-scripts/ifcfg-eth1

#reboot
