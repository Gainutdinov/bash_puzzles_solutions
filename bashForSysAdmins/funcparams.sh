#!/bin/bash
# this demo is for functional parameter passing

# global variable
USERNAME=$1

# function definitions - start 

# calcualte age in days
funcAgeInDays () {
    echo "Hello $USERNAME, you are $1 Years Old."
    echo "That makes you approximately `expr $1 \* 365` days old..."
}

# function definitions - stop

# script - start 
clear

echo "Enter Your age:"
read USERAGE

# calculate the number of days
funcAgeInDays $USERAGE


