#!/bin/bash
make -j 16 -C /lib/modules/`uname -r`/build M=/root/nf/net/ipv4/netfilter modules
make -j 16 -C /lib/modules/`uname -r`/build M=/root/nf/net/netfilter modules

rm -f ./cli/pkfmap
gcc -o ./cli/pkfmap ./cli/pkfmap.c
rm -f ./cli/pkread
gcc -o ./cli/pkread ./cli/pkread.c

