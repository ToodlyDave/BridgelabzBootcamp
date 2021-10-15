#!/bin/bash

left=0;
right=100;
mid=50;

while [ $((right - left)) -gt 1 ]
do

	read -p " is the number less than $mid? (y/n): " ch

	case "$ch" in

		y) right=$mid ;;
		n) left=$mid ;;
	esac

	mid=$(( (right + left) / 2 ));

done

echo " The magic number is $mid";
