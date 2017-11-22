#!/bin/bash
rpm -qa|grep yum|xargs rpm -e --nodeps
rpm -qa|grep yum

curl https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-metadata-parser-xxx.rpm -O --progress
curl https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-xxx.centos.noarch.rpm -O --progress
curl https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-plugin-fastestmirror-xxx.noarch.rpm -O --progress
curl https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-utils-xxx.noarch.rpm -O --progress

curl https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/python-chardet-xxx.noarch.rpm -O --progress
curl https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/python-kitchen-xxx.noarch.rpm -O --progress
curl https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/python-urlgrabber-xxx.noarch.rpm -O --progress
rpm -qa|grep python-urlgrabber|xargs rpm -e --nodeps

rpm -ivh *.rpm


cd /etc/yum.repos.d/
curl http://mirrors.aliyun.com/repo/Centos-7.repo -O --progress
mv Centos-7.repo CentOS-Base.repo

vi CentOS-Base.repo
#:%g s/$releasever/7/
#:wq
yum clean all
yum makecache
yum update
reboot

rpm -q kernel
yum remove kernel-old
reboot
