#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilage"
    exit 1
fi

VALIDATE(){
if [ $1 -eq 0 ]; then
    echo "Already $2 installed"
else
    dnf install $2 -y
    if [ $? -eq 0 ]; then
        echo "Installation successfull of $2"
    else
        echo "Installation Failed for $2"
    fi
fi
}

dnf list installed mysql 
VALIDATE $? Mysql

dnf list installed python3  
VALIDATE $? python3

dnf list installed mongodb111
VALIDATE $? mongodb111


