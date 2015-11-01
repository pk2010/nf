#!/bin/bash
echo "NET/"
ls /lib/modules/`uname -r`/kernel/net/
echo "NET/IPv4/"
ls /lib/modules/`uname -r`/kernel/net/ipv4/
ls -l /usr/sbin/iptables*
cat /proc/sys/net/ipv4/ip_local_port_range
