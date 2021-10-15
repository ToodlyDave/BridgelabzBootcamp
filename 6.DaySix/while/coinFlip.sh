#!/bin/bash

head=0;
tail=0;

while [ $head -le 11 -a $tail -le 11 ]
do
	echo " head => $head tail => $tail ";
	if [ $((RANDOM % 2 )) -eq 0 ]
	then
		((head++));
	else
		((tail++));
	fi
done
