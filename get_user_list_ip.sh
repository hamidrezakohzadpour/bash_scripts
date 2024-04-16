#!/bin/sh
clear
username=""
read -p "Enter username for find IP: " username
if [ -z "$username" ]
then
        echo "User invalid."
else
	cat /var/log/auth.log* | grep $username | grep Accepted | awk '{print $11}' | sort | uniq | nl
fi
