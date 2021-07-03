#! /bin/bash

read -p "Enter a number: " NUM

for ((i = 2; i <= NUM/2; i++))
do
    if [ $((NUM%i)) -eq 0 ]
    then
        echo "$NUM is not a prime number."
        exit
    fi
done
echo "$NUM is a prime number."