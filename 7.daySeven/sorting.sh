#!/bin/bash

for ((i=0;i < 10; i++))
do
	arr[i]=$((RANDOM % 900 + 100));
done

echo ${arr[@]};

for ((i=0; i < 10; i++))
do
	for ((j=0; j < 10 - $i; j++))
	do
		if [[ arr[j] -lt arr[$((j + 1))] ]]
		then
			temp=${arr[$((j + 1))]};
			arr[$((j + 1))]=${arr[j]};
			arr[j]=$temp
		fi
	done
done

echo ${arr[@]};

echo " The second greatest number is ${arr[1]} ";
echo " The second smallest number is ${arr[8]}";
