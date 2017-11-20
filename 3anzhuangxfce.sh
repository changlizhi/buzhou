#!/bin/bash

yum install epel-release
yum groupinstall "X Window System"
yum groupinstall xfce
reboot
startxfce4
yum install git-core
yum install gcc
yum install firefox
yum install cjkuni-ukai-fonts #中文显示支持,在/usr/share/fonts/下会看到这个文件夹
yum install vim

