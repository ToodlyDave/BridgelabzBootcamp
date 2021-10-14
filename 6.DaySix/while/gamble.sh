#!/bin/bash

cash=100;

while [ $cash -gt 0 -a $cash -lt 200 ]
do
	if [ $((RANDOM % 2)) -eq 0 ]
	then
		((cash += 20));
	else
		((cash -= 20));
	fi

	echo " CASH => $cash";
done
