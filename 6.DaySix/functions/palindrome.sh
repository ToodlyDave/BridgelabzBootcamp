#!/bin/bash

isPalindrom() {

	rev=0;
	num=$1;

	while [ $num -gt 0 ]
	do
		remainder=$((num % 10));
		((num /= 10));
		rev=$(( (rev * 10) + remainder ));
	done

	if [ $rev -eq $1 ]
	then
		echo " The number is a palindrome ";
	else
		echo " The number is not a palindrom ";
	fi
}

read -p "Please check the number to check : " n;
isPalindrom $n;
