#!/bin/bash

USERID=$(id -u)

if [ $USERIF -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilage"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Install MYSQL failed"
    exit 1
else 
    echo "Installation of MYSQL is completed"
fi
