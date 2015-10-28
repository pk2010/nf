#!/bin/bash
iptables -t nat -F
iptables -F
rmmod iptable_filter
rmmod iptable_nat
rmmod ip_tables

