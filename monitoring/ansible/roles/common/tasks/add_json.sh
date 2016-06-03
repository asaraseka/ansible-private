#!/bin/bash

ssh_bin="/usr/bin/ssh"
rpm_path="http://192.168.1.254/5/python-simplejson-2.0.9-8.el5.x86_64.rpm"

if [ "$#" -lt 1 ]; then
    echo "Usage $0 host_ip1 host_ip2"
else
    for i in "$@"
	do
	$ssh_bin $i rpm -i $rpm_path
	done
fi