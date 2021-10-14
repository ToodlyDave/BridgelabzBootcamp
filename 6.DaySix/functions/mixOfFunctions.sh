#!/bin/bash

isPalindrome() {

        rev=0;
        num=$1;

        while [ $num -gt 0 ]
        do
                remainder=$((num % 10));
                ((num /= 10));
                rev=$(( (rev * 10) + remainder ));
        done

        if [ $rev -eq $1 ]
        then
                echo " The number is a palindrome ";
        else
                echo " The number is not a palindrom ";
        fi
}

function isPrime() {
        square=`awk "BEGIN { print sqrt($1);}"`;

        flag=0;

        square=${square%.*}

        for ((i = 2; i <= square; i++))
        do
                if [ $(($1 % i)) -eq 0 ]
                then
                        echo " Not prime, its divisible by $i";
                        flag=1;
                        break;
                fi
        done

        if [ $flag -eq 0 ]
        then
                echo " It's a prime number";
        fi
}

read -p "Please enter the number to check: " n;

isPrime $n;

isPalindrome $n;
