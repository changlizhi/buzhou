#!/bin/bash
curl http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.0.0-6661328.x86_64.bundle -O

chmod +x Vmware-Wrokstation-Full-xxx.bundle
./Vmware-workstation-Full-xxx.bundle

# 最新VM14或更高的版本:
#VF19H-8YY5L-48DQY-JEWNG-YPKF6
#VF3W2-AZF91-480VP-Z5YZZ-QURDD
#YV34A-D3Z4N-M817Y-Y6Y7V-M7H8F
#AC7TA-2WYD3-M814Y-UMQNX-XCHFA 

yum instal kernel-devel-xxx
#choose it /usr/src/kernel/xxx/include/linux/version.h
restart vmware
