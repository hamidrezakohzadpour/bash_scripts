#!/bin/bash
clear
username="" 
read -p "Enter username for create: " username
if [ -z "$username" ]
then
	echo "Invalid username."
else	
	pass=`pwgen -s -1`
	useradd	 -s /bin/false $username
	sleep 2
	echo -e "$pass\n$pass" | passwd $username
#if [ $? -eq 0 ]
#then
	chage -i $username
	echo ""
	echo ""
	echo ===================
	echo User IS: $username
	echo Password Is: $pass
	echo ===================
	echo ""
	echo ""
	echo =================== >> /root/acc.txt
        echo User IS: $username  >> /root/acc.txt
        echo Password Is: $pass  >> /root/acc.txt
        echo =================== >> /root/acc.txt
fi

