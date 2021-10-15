#!/bin/bash

read -p " Please enter the year: " year;

if [ $((year % 4)) -eq 0 -a $((year % 100)) -ne 0 -o $((year % 400)) -eq 0 ];
then
	echo " its a leap year";
else
	echo " nope";
fi

