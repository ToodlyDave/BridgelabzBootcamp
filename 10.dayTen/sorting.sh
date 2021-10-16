#!/bin/bash

read -p " Please enter the values for a b c : " a b c

declare -A dict;

dict[1]=$((a + b * c))
dict[2]=$((a * b + c))
dict[3]=$((c + a / b))
dict[4]=$((a % b + c))


