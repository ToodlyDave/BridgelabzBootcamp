#!/bin/bash

ran=$(( $((RANDOM % 900)) + 100));
max=$ran;
min=$ran;

for ((i=0; i < 3; i++)) 
do 
	echo " The new number is ==> " $ran;

	if [ $ran -gt $max ];
	then
		echo " the new max is " $ran;
		max=$ran;

	elif [ $ran -lt $min ];
	then 
		echo " the new min is " $ran;
		min=$ran;
	fi 

	ran=$((RANDOM % 1000));

	
done
