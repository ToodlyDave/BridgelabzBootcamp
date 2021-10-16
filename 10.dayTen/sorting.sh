#!/bin/bash

read -p " Please enter the values for a b c : " a b c

declare -A dict;

dict[1]=$((a + b * c))
dict[2]=$((a * b + c))
dict[3]=$((c + a / b))
dict[4]=$((a % b + c))

for ((i = 0; i < 5; i++))
do
	arr[$i]=${dict[$i]};
done

echo ${arr[@]};

for ((i = 0; i < 5; i++))
do
	for ((j = 0; j < 5 - $i - 1; j++))
	do
		if [ arr[$j] -ge arr[$((j + 1))] ]
		then
			temp=arr[$j];
			arr[$j]=${arr[$((j + 1))]};
			arr[$((j + 1))]=$temp;
		fi

	done
done

echo ${arr[@]};
