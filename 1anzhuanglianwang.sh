#!/bin/bash
cd /etc/sysconfig/network-scripts/
vi ifcfg-eno1
#change ONBOOT=yes
#add HWADDR=macvalue macvalue=xxx addr link/ether:xxx
#myserver's mac d0:50:99:c8:59:ae
systemctl enable NetworkManager-wait-online.service#wether this unneed?
reboot
ping www.taobao.com
