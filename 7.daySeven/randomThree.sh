#!/bin/bash

max=0;
max2=0;
maxi=0;
mini=0;
min=1000;
min2=1000;

for ((i=0; i < 10; i++))
do
	arr[i]=$((RANDOM % 900 + 100));

	if [[ $max -le ${arr[i]} ]];
	then
		if [ $i -ne 0 ]
		then
			max2=$max;
		fi

		max=${arr[i]};
		maxi=$i;
	fi

	if [ $max2 -le ${arr[i]} -a $i -ne $maxi ];
	then
		max2=${arr[i]};
	fi


	if [ $min -ge ${arr[i]} ]
	then
		if [ $i -ne 0 ]
		then
			min2=$min;
		fi

		min=${arr[i]};
		mini=$i;
	fi
	if [ $min2 -ge ${arr[i]} -a $i -ne $mini ];
	then
		min2=${arr[i]};
	fi

done


echo ${arr[@]};

echo " max = $max min = $min ";
echo " max2 = $max2 min2 = $min2";
