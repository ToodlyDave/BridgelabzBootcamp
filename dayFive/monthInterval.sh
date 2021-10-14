#!/bin/bash

read -p " Please enter the date and month: " date month;

if [ $month -ge 3 -a $month -le 6 ];
then 
	if [ $date -ge 1 -a $date -le 31 ];
	then
		echo " The date you entered is between march and june 20th";
	else
		echo " nope";
	fi
else
	echo " nope";
fi  
