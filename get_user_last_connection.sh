#!/bin/bash
clear
username="" 
read -p "Enter username for create report: " username
if [ -z "$username" ]
then
	echo "Invalid username."
else	
	echo ""
	#total_accepted=0
	accepted_counter=`cat /var/log/auth.log | grep $username | grep "Accepted password" | wc -l`
	echo   "Count of accepted password is: $accepted_counter (tail 3)"
	#echo -n "Total:" & cat /var/log/auth.log | grep $username | grep "Accepted password" | wc -l
	echo "=============================================================================="
	cat /var/log/auth.log | grep $username | grep "Accepted password" | tail  -n 3| nl
	echo ""
	failed_counter=`cat /var/log/auth.log | grep $username | grep "Failed password" | wc -l`
	#echo "Failed password: (head)"
	#echo -n "Total:" & cat /var/log/auth.log | grep $username | grep "Failed password" | wc -l
	#echo "=============================================================================="
	#cat /var/log/auth.log | grep $username | grep "Failed password" | head -n 5 | nl
	#echo ""
	echo "Count of failed password is: $failed_counter (tail 20)"
	echo "=============================================================================="
	cat /var/log/auth.log | grep $username | grep "Failed password" | tail -n 20 | nl
	echo ""
fi

