#!/bin/bash
clear
echo "================================================="
counter=0
for i in `cat /etc/passwd | cut -d ":" -f 1 | sort | grep ^u9`
do
	(( counter ++ ))
	#counter=$(( counter + 1 ))
	echo -e -n $i "\t"
	chage -l $i | grep "Password expires" | awk '{ print $1 " " $2 $3 " " $4  $5 " " $6 }' 
done
echo "================================================="
#echo "Count of users: " $counter 

