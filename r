#!/bin/bash
pkill screen
iptables -t nat -F
iptables -F
rmmod xt_connlimit
rmmod xt_conntrack
rmmod ipt_MASQUERADE
rmmod nf_nat_masquerade_ipv4
rmmod iptable_filter
rmmod ipt_REJECT
rmmod iptable_nat

rmmod xt_nat
rmmod nf_nat_ipv4
rmmod nf_nat
rmmod nf_conntrack_ipv4
rmmod nf_defrag_ipv4
rmmod nf_conntrack_netlink
rmmod nfnetlink
rmmod nf_conntrack
rmmod ip_tables
