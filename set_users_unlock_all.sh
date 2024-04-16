#!/bin/bash
for i in `cat /etc/passwd | cut -d ":" -f 1 | grep ^u9`
do
	/usr/sbin/usermod -U -e -1 $i
#	echo $(date) " Users $i unlocked!." >> /root/log.txt
#	sleep 1
done
echo $(date) "All users unlocked!." >> /root/log.txt
