#!/bin/bash
echo > 1 /proc/sys/net/ipv4/ip_forward
iptables -F
iptables -X
iptables -F INPUT
iptables -F FORWARD
iptables -F OUTPUT
iptables -F -t nat
############# fine pulitura dei flussi ############
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
