#!/bin/bash

declare -A birth;
declare -A count;

for ((i = 1; i < 10; i++))
do
	ch=$((RANDOM % 12));

	echo " the month is $ch ";

	case $ch in
		0) birth[$i]="January";;
		1) birth[$i]="Febuary";;
		2) birth[$i]="March";;
		3) birth[$i]="April";;
		4) birth[$i]="May";;
		5) birth[$i]="June";;
		6) birth[$i]="July";;
		7) birth[$i]="August";;
		8) birth[$i]="September";;
		9) birth[$i]="October";;
		10) birth[$i]="Novemeber";;
		11) birth[$i]="December";;
	esac

	if [ -z ${count[$ch]} ]
	then
		echo " made a new month ";
		count[$ch]=1;
	else
		echo " repeated month ";
		count[$ch]=$((${count[$ch]} + 1));
	fi

	echo "";

done

for ((i = 1; i < 10; i++))
do
	echo " $i = ${birth[$i]}";
done

echo "";
echo " same birthdays ";

for ((i = 0; i < 12; i++))
do
	if [[ ${count[$i]} > 1 ]]
	then
		echo "$i = ${count[$i]}";
	fi
done
