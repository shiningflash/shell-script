#! /bin/bash

read -p "Enter a number: " NUM

IS_MOD_BY_2=$(($NUM % 2 == 0))
IS_MOD_BY_3=$(($NUM % 3 == 0))

if [[ $IS_MOD_BY_2 == 1 && $IS_MOD_BY_3 == 1 ]]
then
    echo "Hello"
elif [[ $IS_MOD_BY_2 == 1 || $IS_MOD_BY_3 == 1 ]]
then
    echo "Nihao"
else
    echo "Hola"
fi