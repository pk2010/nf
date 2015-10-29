#!/bin/bash
pkill screen
iptables -t nat -F
iptables -F
rmmod xt_connlimit
rmmod xt_conntrack
rmmod nf_nat_masquerade_ipv4
rmmod iptable_filter
rmmod ipt_REJECT
rmmod ipt_MASQUERADE
rmmod iptable_filter
rmmod iptable_nat
rmmod ip_tables

rmmod xt_nat
rmmod nf_nat_ipv4
rmmod nf_nat
rmmod nf_conntrack_ipv4
rmmod nf_defrag_ipv4
rmmod nf_conntrack
