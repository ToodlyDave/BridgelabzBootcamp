#!/bin/bash

ans=0;

read -p " Please enter the value of n: " n;

for ((i = 1; i <= n; i++))
do
	ans=`awk "BEGIN {print $ans + (1 / $i)}"`
#	echo -n "(1/$i) ";
#	if [ $i -lt $n ]
#	then
#		echo -n "+ ";
#	fi
done

echo "";
echo "The final value of ans is $ans";

