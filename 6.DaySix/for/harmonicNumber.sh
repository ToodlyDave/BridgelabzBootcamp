#!/bin/bash

ans=0;

read -p " Please enter the value of n: " n;
awk "BEGIN {print ($n)}";

for ((i = 1; i <= n; i++))
do
	#awk "BEGIN { var=( 1 / $i ); print $ans $i $var;}";
	((ans += (1 / $i) ));
	echo " ans = $ans";
done 

echo "The final value of ans is $ans";

