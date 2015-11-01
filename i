#!/bin/bash
ker=`uname -r`

sysctl -w net.ipv4.ip_local_port_range="65001 65535"

if [ ! -d "/usr/lib/modules/$ker/kernel/net/netfilter_bck" ]; then
  mv /usr/lib/modules/$ker/kernel/net/netfilter /usr/lib/modules/$ker/kernel/net/netfilter_bck;
  ln -s /root/nf/net/netfilter /usr/lib/modules/$ker/kernel/net/netfilter;
else
  echo "/usr/lib/modules/$ker/kernel/net/netfilter_bck already there";
fi

if [ ! -d "/usr/lib/modules/$ker/kernel/net/ipv4/netfilter_bck" ]; then
  mv /usr/lib/modules/$ker/kernel/net/ipv4/netfilter /usr/lib/modules/$ker/kernel/net/ipv4/netfilter_bck;
  ln -s /root/nf/net/ipv4/netfilter /usr/lib/modules/$ker/kernel/net/ipv4/netfilter;
else
  echo "/usr/lib/modules/$ker/kernel/net/ipv4/netfilter already there";
fi

if [ -L "/usr/sbin/iptables-restore" ]; then
  rm -f /usr/sbin/iptables-restore
else
  echo "/usr/sbin/iptables-restore not there who took it?";
fi

ln -s /root/nf/iptables-restore /usr/sbin/iptables-restore
