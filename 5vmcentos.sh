#!/bin/bash
curl http://mirrors.aliyun.com/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1708.iso -O

vi /etc/sysconfig/network-scirpts/ifcfg-ens33
# ONBOOT=yes
# BOOTPROTO=static
# IPADDR=192.168.0.106/107/108
# NETMASK=255.255.255.0
# GATEWAY=192.168.0.1
# DNS1=192.168.0.1
