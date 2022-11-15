#!/bin/sh
. ~/.bash_profile
date
echo nameserver 8.8.8.8 > /etc/resolv.conf
PIHOLE_SKIP_OS_CHECK=true pihole -up
PIHOLE_SKIP_OS_CHECK=true pihole -r
pihole restartdns
yum -y update
yum -y autoremove
