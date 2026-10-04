#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You are not running using root user"
else
    echo "You are running with root user"
fi

dnf install mysql -y

if [ $? -eq 0]
then
    echo "Installing MYSQL is ... SUCCESS"
else
    echo "Installing MYSQL is ... FAILED"
fi