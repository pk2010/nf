#!/bin/bash
make -C /lib/modules/`uname -r`/build M=/root/nf/net/ipv4/netfilter modules
make -C /lib/modules/`uname -r`/build M=/root/nf/net/netfilter modules


