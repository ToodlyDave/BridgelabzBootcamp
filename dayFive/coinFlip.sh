#!/bin/bash

if [ $(( RANDOM % 2 )) -eq 0 ];
then 
	echo " HEAD ";
else 
	echo " TAIL ";
fi 
