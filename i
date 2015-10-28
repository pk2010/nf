#!/bin/bash
ker=`uname -r`
if [ ! -d "/usr/lib/modules/$ker/kernel/net/netfilter_bck" ]; then
  mv /usr/lib/modules/$ker/kernel/net/netfilter /usr/lib/modules/$ker/kernel/net/netfilter_bck
  ln -s /root/nf/net/netfilter /usr/lib/modules/$ker/kernel/net/netfilter
fi

if [ ! -d "/usr/lib/modules/$ker/kernel/net/ipv4/netfilter" ]; then
  mv /usr/lib/modules/$ker/kernel/net/ipv4/netfilter /usr/lib/modules/$ker/kernel/net/ipv4/netfilter_bck
  ln -s /root/nf/net/netfilter /usr/lib/modules/$ker/kernel/net/ipv4/netfilter
fi
