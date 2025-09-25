#!/bin/bash

echo "All variables passed to the script : $@"
echo "All variables passed to the script : $*"
echo "Script name : $0"
echo "Current Directory : $PWD"
echo "Who is running this : $USER"
echo "Home Directory of user : $HOME"
echo "PID of Scrpit : $$"
sleep 50 &
echo "PID of the last command in background is : $!"
