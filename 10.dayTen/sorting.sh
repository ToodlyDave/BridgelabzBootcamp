#!/bin/bash

read -p " Please enter the values for a b c : " a b c

declare -A dict;

dict[0]=$((a + b * c))
dict[1]=$((a * b + c))
dict[2]=$((c + a / b))
dict[3]=$((a % b + c))

for ((i = 0; i < 5; i++))
do
	arr[$i]=${dict[$i]};
done

echo ${arr[@]};
for ((i = 0; i < 5; i++))
do
	for ((j = 0; j < 5 - $i - 1; j++))
	do
		k=$((j + 1));
		if [[ ${arr[$j]} -ge ${arr[$k]} ]]
		then
			temp=${arr[$j]};
			arr[$j]=${arr[$((j + 1))]};
			arr[$((j + 1))]=$temp;
		fi

	done
done

echo " Ascending order : " ${arr[@]};

for ((i = 0; i < 5; i++))
do
        for ((j = 0; j < 5 - $i - 1; j++))
        do
                k=$((j + 1));
                if [[ ${arr[$j]} -le ${arr[$k]} ]]
                then
                        temp=${arr[$j]};
                        arr[$j]=${arr[$((j + 1))]};
                        arr[$((j + 1))]=$temp;
                fi

        done
done

echo " Descending order : " ${arr[@]};
