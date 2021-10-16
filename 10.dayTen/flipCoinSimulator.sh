#!/bin/bash


heads=0;
tails=0;
diff=0;
while [[ $heads -lt 21 && $tails -lt 21 || $diff -lt 2 ]]
do
	if [ $((RANDOM % 2)) -eq 0 ];
	then
		((heads++));
	else
		((tails++));
	fi
	diff=$((heads-tails));
	diff=${diff#-};
done

echo " heads = $heads and tails = $tails";

if [ $heads -gt $tails ];
then
	echo " Heads won by " $((heads - tails));
else
	echo " Tails won by " $((tails - heads));
fi
