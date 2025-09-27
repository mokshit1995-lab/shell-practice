#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilage"
    exit 1
fi

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE


VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "Installation Failure of $2"
    else 
        echo "Installation success of $2"
    fi
}

#$@

for package in $@
do 
    #check package is already installed or not
    dnf list installed $package &>>$LOG_FILE
    if [ $? -eq 0 ]; then
        echo "Package $package already installed"
    else
        dnf install $package &>>$LOG_FILE
    fi
done