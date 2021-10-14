#!/bin/bash

read -p " Please enter the value: " n;
initialValue=$n;
flag=0;

for ((i = 2; i <= ( initialValue / 2);))
do
	#echo "We're checking $i now => ";
	if [ $((n % i)) -eq 0 ];
	then
		((n /= i));
		#echo $i is a prime factor;
		flag=1;
	elif [ $flag -eq 1 ];
	then
		echo $i is a prime factor;
		((i++));
		flag=0;
	else
		flag=0;
		((i++));
	fi
done

