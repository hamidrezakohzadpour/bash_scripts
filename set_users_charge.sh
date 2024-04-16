#!/bin/bash
clear
pass_change_date=""
read -p "Enter date: " pass_change_date
if [ -z "$pass_change_date" ]
then
        echo "Enter a valid date."
	else
		users=( 
					"u962_xxxx"
					"u963_xxxx"
					"u965_xxxx"
					"u976_xxxx"
					"u977_xxxx"
					"u978_xxxx"
					"u983_xxxx"
					"u984_xxxx"
					"u985_xxxx"
					"u986_xxxx"
					"u987_xxxx"
					"u988_xxxx"
					"u989_xxxx")

		for i in "${users[@]}"
		do
			echo -e ""180"\n"180"\n$pass_change_date\n"0"\n"0"\n\n" | chage -i $i
		done
fi
