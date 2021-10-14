#!/bin/bash

sum=0;

for ((i=0; i < 5; i++))
do 
	ran=$((RANDOM % 100));
	((sum += ran));
	echo " the number is " $ran " and the sum is " $sum;
done 

sum=0.5
echo $((sum * 1));
