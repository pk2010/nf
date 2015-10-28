#!/bin/bash
make -j 16 -C /lib/modules/`uname -r`/build M=/root/nf/net/ipv4/netfilter modules
make -j 16 -C /lib/modules/`uname -r`/build M=/root/nf/net/netfilter modules


