#!/bin/bash

read -p " Please enter the value of n: " n;
ans=1;

for ((i = 1; i <= n; i++))
do
	((ans *= $i));
done

echo " The factorial of $n is $ans";
