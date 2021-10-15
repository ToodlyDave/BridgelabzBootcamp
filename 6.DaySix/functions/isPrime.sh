#!/bin/bash

function isPrime() {
	square=`awk "BEGIN { print sqrt($1);}"`;

	flag=0;

	square=${square%.*}

	for ((i = 2; i <= square; i++))
	do
		if [ $(($1 % i)) -eq 0 ]
		then
			echo "not prime, its divisible by $i";
			flag=1;
			break;
		fi
	done

	if [ $flag -eq 0 ]
	then
		echo " its a prime number";
	fi
}

read -p "Please enter the number to check: " n;
isPrime $n;

