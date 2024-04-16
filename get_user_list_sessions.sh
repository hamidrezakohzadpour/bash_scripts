#!/bin/bash
clear
for i in `cat /etc/passwd | cut -d ":" -f 1 | grep ^u9`
do
	lsof -i TCP -s tcp:established -n | grep ssh | grep $i | grep 1322
	echo "============================================================================"
done

