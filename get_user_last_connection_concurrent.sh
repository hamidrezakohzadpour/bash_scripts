#!/bin/bash
for i in `cat /etc/passwd | cut -d ":" -f 1 | grep ^u9`
do
	if [ -z "$i" ]
	then
	        echo "User invalid."
	else
	        count_of_session=0
	        count_of_session=` lsof -i TCP -s tcp:established -n | grep ssh | grep $i | grep 1322 | wc -l`
	        if [ $count_of_session -gt 2 ];
	        then
	        	killall -KILL -u $i
			echo  $(date) "User:" $i "Killed all session and waiting for 30 second." >> /root/log.txt
			sleep 30
			count_of_session=` lsof -i TCP -s tcp:established -n | grep ssh | grep $i | grep 1322 | wc -l`
			if [ $count_of_session -gt 2 ];
			then
				killall -KILL -u $i
				/usr/sbin/usermod -L -e 1 $i
				echo  $(date) "User:" $i "Killed and Locked!."  >> /root/log.txt
			fi
		fi
	fi
done
