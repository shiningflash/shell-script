#! /bin/bash

read -p "Which operation would you like to do? " OPERATION

read -p "Operand 1: " OPERAND_1
read -p "Operand 2: " OPERAND_2

if [[ $OPERATION == "+" ]]
then
    echo $(($OPERAND_1 + $OPERAND_2))
elif [[ $OPERATION == "-" ]]
then
    echo $(($OPERAND_1 - $OPERAND_2))
elif [[ $OPERATION == "*" ]]
then
    echo $(($OPERAND_1 * $OPERAND_2))
elif [[ $OPERATION == "/" ]]
then
    echo $(($OPERAND_1 / $OPERAND_2))
else
    echo "Invalid operation!"
fi