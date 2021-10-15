#!/bin/bash

echo " Welcome to the Employee Wage Computation Program ";

if [ $((RANDOM % 2)) -eq 0 ]
then
	isPresent="Absent";
else
	isPresent="Present";
fi

wage=20;

echo " Monthly wages = " $((20 * 8 * wage));
