#!/bin/bash

j=0;

for ((i=0; i <= 100; i++))
do
	echo $i;
	if [[ $((i % 11)) -eq 0 ]]
	then
		arr[((j++))]=$i;
	fi
done
echo $i;

arr[((j))]=$((--i));

echo ${arr[@]};

