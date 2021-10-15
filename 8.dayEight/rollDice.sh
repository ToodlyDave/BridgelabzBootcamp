#!/bin/bash

declare -A dice;
count=0;

while [ $count -lt 10 ]
do
	number=$((RANDOM % 6 + 1));
	if [ -z ${dice[$number]} ]
	then
		dice[$number]=1;
		count=1;
	else
		((dice[$number]++));
		count=${dice[$number]};
	fi
done

for ((i=1; i < 7; i++))
do
	echo "$i : ${dice[$i]}";
done

echo ${dice[@]};
