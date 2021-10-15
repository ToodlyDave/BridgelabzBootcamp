#!/bin/bash

read -p " Please enter the end of the range of numbers for generating prime nos: " n;
flag=0;

for ((i = 1; i <= n; i++))
do
	if [ $i -le 3 ];
	then
		echo $i;
		continue;
	fi

	for ((j = 2; j <= $((i / 2)); j++))
	do
		if [ $((i % j)) -eq 0 ];
		then
			#echo " not $i";
			flag=1;
			break;
		fi
	done

	if [ $flag -ne 1 ];
	then
		echo $i;
	fi

	flag=0;

done
