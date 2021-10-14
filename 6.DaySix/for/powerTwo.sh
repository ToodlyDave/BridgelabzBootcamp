#!/bin/bash

read -p " Please enter a value of n: " n;

ans=1;

for (( i = 1; i <= n; i++ ))
do 
	((ans *= 2));
	echo " 2^" $i " = $ans";
done

echo "The final value : $ans";
