#!/bin/bash

echo "Please enter a number:"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "Given Number $NUMBER is EVEN"
else 
    echo "Given Number $NUMBER is ODD"
fi