#!/bin/bash
IPUGLY=`hostname -I`
IPCLEAN="$(echo -e "${IPUGLY}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"

if [ ! -f ./pkt/interface.h ]; then
  IFS='.' read -r -a array <<< "$IPCLEAN";
  echo "#define MYIP ( ${array[0]}U,${array[1]}U,${array[2]}U,${array[3]}U ) " > ./pkt/interface.h
fi

make -j 16 -C /lib/modules/`uname -r`/build M=/root/nf/net/netfilter modules
make -j 16 -C /lib/modules/`uname -r`/build M=/root/nf/net/ipv4/netfilter modules KBUILD_EXTMOD=/root/nf/net/netfilter

rm -f ./cli/pkfmap
gcc -o ./cli/pkfmap ./cli/pkfmap.c
rm -f ./cli/pkread
gcc -o ./cli/pkread ./cli/pkread.c

