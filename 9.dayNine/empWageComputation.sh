#!/bin/bash

function wageCalculator() {
	echo $((RANDOM % 2));
}

echo " Welcome to the Employee Wage Computation Program ";

if [ $((RANDOM % 2)) -eq 0 ]
then
	isPresent="Absent";
else
	isPresent="Present";
fi

wage=20;
hours=0;
days=0;

echo " Monthly wages = " $((20 * 8 * wage));

while [[ $hours -lt 100 && $days -lt 20 ]]
do
	timing=$(wageCalculator);
	case $timing in
		0) ((earnings += (wage * 8) ));
		   ((days++));
		   ((hours+=8));
		   ;;
		1) ((earnings += (wage * 4) ));
		   ((days++));
		   ((hours+=4));
		   ;;
		*) echo "something went wrong ";;
	esac
done

echo " hours = $hours days = $days ";
echo " earnings = $earnings";
