#!/bin/bash
cd /etc/sysconfig/network-scripts/
echo "IPADDR=192.168.0.105" >> ifcfg-eth0
echo "NETMASK=255.255.255.0" >> ifcfg-eth0
echo "GATEWAY=192.168.0.1" >> ifcfg-eth0
echo "DNS1=192.168.0.1" >> ifcfg-eth0
vi ifcfg-eth0
#BOOTPROTO=static
#ONBOOT=yes

systemctl start network.service
systemctl enable NetworkManager-wait-online.service#wether this unneed?
reboot
ping www.taobao.com
