#!/bin/bash

read -p " Please enter the number you want to check: " n;
flag=0;

for (( i = 2; i <= ($n / 2); i++))
do
	if [ $((n % i)) -eq 0 ];
	then
		flag=1;
		echo " The value you entered is not prime. It is divisible by " $i;
	fi
done

if [ $flag -eq 0 ];
then
	echo " The value you entered is prime ";
fi
