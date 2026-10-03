#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You are not running using root user"
else
    echo "You are running with root user"
fi

dnf install mysql -y