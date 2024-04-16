#!/bin/bash
clear
username=""
read -p "Enter username for change password: " username
if [ -z "$username" ]
then
	echo "User invalid."
else
	pass=`pwgen -s -1`
	echo -e "$pass\n$pass" | passwd $username
	echo ""
	echo ""
	echo User IS: $username
	echo Password Is: $pass
	echo ""
	echo ""
        echo User IS: $username  >> /root/acc.txt
        echo Password Is: $pass  >> /root/acc.txt
        echo =================== >> /root/acc.txt
	chage -l $username
fi
