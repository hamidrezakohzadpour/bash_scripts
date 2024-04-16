#!/bin/bash
free_users=( 
	     	"u962_xxxx"
			"u965_xxxx"
	     	"u981_xxxx"
	     	"u985_xxxx"
	     	"u986_xxxx"
	     	"u987_xxxx"
	     	"u989_xxxx"
	     	"u991_xxxx"
	     	"u992_xxxx" )

for i in "${users[@]}"
do
	/usr/bin/killall -KILL -u $i
	#/usr/sbin/usermod -L $i
	#sleep 1
done
echo $(date) "All users killed!." >> /root/log.txt
