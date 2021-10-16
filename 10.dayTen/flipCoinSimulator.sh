#!/bin/bash


heads=0;
tails=0;
diff=0;
prev="none";
i=0;
count=1;

declare -A dict;

while [[ $heads -lt 5 && $tails -lt 5 || $diff -lt 2 ]]
do
	if [ $((RANDOM % 2)) -eq 0 ];
	then
		((heads++));
		arr[$i]=0;
		echo "H";
	else
		((tails++));
		arr[$i]=1;
		echo "T";
	fi
	diff=$((heads-tails));
	diff=${diff#-};
	((i++));
done

for ((i=1; $i < ${#arr[@]}; i++))
do
	if [ ${arr[$i]} -eq ${arr[$((i - 1))]} ]
	then
		((count++));
	else
		if [ -z ${dict[$count]} ]
		then
			dict[$count]=1;
		else
			((dict[$count]++));
		fi
		count=1;

	fi
done

((dict[$count]++));

echo " heads = $heads and tails = $tails";

if [ $heads -gt $tails ];
then
	echo " Heads won by " $((heads - tails));
else
	echo " Tails won by " $((tails - heads));
fi

echo " keys = ${!dict[@]}";
echo " vals = ${dict[@]}";


for key in ${!dict[@]}
do
	echo " $key = ${dict[$key]} ";
done
