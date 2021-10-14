#!/bin/bash

function isPrime() {
	square=`awk "BEGIN { print sqrt($1); }"`;
	square=${square%.*};
#	echo square is $square;

	for ((i=2; i <= square; i++))
	do
		if [[ $(($1 % i)) -eq 0 ]]
		then
#			echo "not prime";
			echo 0;
			return;
		fi
	done
#	echo "prime";
	echo 1;
	return;
}

read -p " Please enter the number : " n;
num=$n;
j=0;
flag=0;

for ((i=2; i <= num; i++))
do
	var=$(isPrime $i);
	if [[ $((num % i)) -eq 0 ]]
	then
		if [[ $var -eq 1 ]]
		then
			echo $i;
			((num /= i));
			echo " num = $num";
			((flag++));
			echo " flag = $flag";
			if [[ $flag -eq 1 ]]
			then
				arr[((j++))]=$i;
			fi
			((i--));

		fi
	else
		flag=0;
	fi
done

echo ${arr[@]};

