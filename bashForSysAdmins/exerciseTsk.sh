#!/bin/bash

# this is to show exit status types
set -e

echo "echo command used here"

MYVAR=4

echo "$USER"
echo "$HOME"
echo "$HISTCONTROL"
echo "$TERM"
# ---------------------------------
MYUSERNAME='TESTUSERNAME'
MYPASSWORD='TESTPASSWORD'
STARTOFSCRIPT=`date`
ENDOFSCRIPT=`date`
# test comment

echo "this you will not see" >> /dev/null


expr 1 + 5
echo $?

rm notExistingFile.show
echo $?


expr 2 + 2

expr 2 + 2 \* 4

# This script is intended to show how to do simple substitution
shopt -s expand_aliases
alias TODAY="date"
TODAYSDATE=`date`
echo "Today's Date: $TODAYSDATE"
A=`TODAY`
echo "With Alias, TODAY is: $A"

#--------------------------------------------------

echo "Enter Your First Name: "
read FIRSTNAME
echo "Enter Your Last Name: "
read LASTNAME

# array usage example
SERVERLIST=("websrv01" "websrv02" "websrv03" "websrv04")
COUNT=0
for INDEX in ${SERVERLIST[@]}; do
  echo "Processing Server: ${SERVERLIST[COUNT]}"
  COUNT="`expr $COUNT + 1`"
done

# shell expansion

echo sh{o,or}t

echo ~
echo ~- # prints prior directory
echo ~+ # prints current directory
echo "${!HO*}"  # prints variable which starts with HO

echo "${VARNAME:=valuesomething}" # will assign value for VARNAME

echo  "$[ 2 * 2 ]" # arithmetic operations 
