#!/bin/bash
ker=`uname -r`
if [ ! -d "/usr/lib/modules/$ker/kernel/net/netfilter_bck" ]; then
  mv /usr/lib/modules/$ker/kernel/net/netfilter /usr/lib/modules/$ker/kernel/net/netfilter_bck;
  ln -s /root/nf/net/netfilter /usr/lib/modules/$ker/kernel/net/netfilter;
else
  echo "/usr/lib/modules/$ker/kernel/net/netfilter_bck";
fi

if [ ! -d "/usr/lib/modules/$ker/kernel/net/ipv4/netfilter_bck" ]; then
  mv /usr/lib/modules/$ker/kernel/net/ipv4/netfilter /usr/lib/modules/$ker/kernel/net/ipv4/netfilter_bck;
  ln -s /root/nf/net/ipv4/netfilter /usr/lib/modules/$ker/kernel/net/ipv4/netfilter;
else
  echo "/usr/lib/modules/$ker/kernel/net/ipv4/netfilter";
fi
