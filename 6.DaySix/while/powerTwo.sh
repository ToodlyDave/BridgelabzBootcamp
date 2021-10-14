#!/bin/bash

read -p "Please enter the value of n: " n;
ans=2;
i=1;

while [ $ans -lt 256 -a $i -le $n ]
do
	((ans *= 2));
	((i++));
done

echo $ans is the final value
