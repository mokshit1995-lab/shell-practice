#!bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-roboshop"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
SCRIPT_DIR=$PWD
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script execution started at : $(date) " | tee -a $LOG_FILE

echo "Please enter Directory or file name for file existance and premissions:"
read FILE_OR_DIR

if [ -d $FILE_OR_DIR 0 ]; then
    cd $FILE_OR_DIR 
    if [ $? -ne 0]; then
        echo "Error : $FILE_OR_DIR not found"
        exit 1
    else
        ls -la
    fi
else
    FILE_NAME=$(find / -name "$FILE_OR_DIR")
    if [ $? = 0 ]; then
        echo "$FILE_OR_DIR Exist"
        
fi


