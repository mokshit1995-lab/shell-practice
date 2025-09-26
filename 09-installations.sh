#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilage"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "Installation Failure of $2"
    else 
        echo "Installation success of $2"
    fi
}

dnf list installed mysql 
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else 
    echo "Already installed Mysql"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "Python"
else 
    echo "Already installed Python3"
fi

dnf list installed mongodb11
if [ $? -ne 0 ]; then
    dnf install mongodb11 -y
    VALIDATE $? "Mongodb11"
else 
    echo "Already installed Mongodb11"
fi

