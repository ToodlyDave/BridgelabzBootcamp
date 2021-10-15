#!/bin/bash

function convert() {
	case $2 in
		c)
		    if [ $1 -ge 32 -a $1 -le 212 ];
		    then
		    	awk "BEGIN { print (($temp - 32) * (5 / 9)); }";
		    else
                        echo " Outside the correct range ";
		    fi
		    ;;
		f)
		    if [ $1 -ge 0 -a $1 -le 100 ];
		    then
		    	awk "BEGIN { print (($temp * 9 / 5) + 32); }";
		    else
		    	echo " Outside the correct range ";
		    fi
		    ;;
	esac
}


read -p " Do you want to convert to celcius or fahrenheit? (c/f) : " ch;
read -p " Please enter the temperature value: " temp;

convert $temp $ch;
