#!/bin/bash

echo "Please enter a number:"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "Given Number $NUMBER is EVEN"
else 
    echo "Given Number $NUMBER is ODD"
fi


echo "Please enter a number to check if its prime or not:"
read NUMBER1

if [ $(($NUMBER1 % 2)) -eq 0 ]; then
    echo "Given Number $NUMBER1 is Not Prime"
elif [ $(($NUMBER1 % 3)) -eq 0 ]; then
    echo "Given Number $NUMBER1 is Not Prime"
elif [ $(($NUMBER1 % 5)) -eq 0 ]; then
    echo "Given Number $NUMBER1 is Not Prime"
else
    echo "Given Number $NUMBER1 is Prime"
fi
