#! /bin/bash

# COMPARISON [-eq, -ne, -gt, -ge, -lt, -le]
# Remember, no extra space in variable declaration

NUM1=12
NUM2=-22

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less then $NUM2"
fi