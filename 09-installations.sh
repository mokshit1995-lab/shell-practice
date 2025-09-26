#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilage"
    exit 1
fi

VALIDATE(){
if [ $1 -eq 0 ]; then
    echo "Already $2 installed"
    exit 1
else 
    dnf install $2 -y
    echo "Installation of $2 is completed"
fi
}

dnf list installed mysql 
VALIDATE $? Mysql


dnf list installed python3 
VALIDATE $? python3

dnf list installed nginx
VALIDATE $? nginx


