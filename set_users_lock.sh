#!/bin/bash
free_users=(
	     	"u962_xxxx"
			"u963_xxxx"
			"u965_xxxx"
	     	"u977_xxxx"
	    	"u985_xxxx"
	     	"u986_xxxx"
	     	"u989_xxxx")

for i in "${users[@]}"
do
	/usr/bin/killall -KILL -u $i
	/usr/sbin/usermod -L $i
	sleep 1
done
echo $(date) "All users locked!." >> /root/log.txt
