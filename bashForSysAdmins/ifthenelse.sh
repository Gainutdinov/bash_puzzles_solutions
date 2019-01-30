#!/bin/bash

clear
echo "Enter a number between 1 and 3: "
read VALUE

if [ "$VALUE" -eq "1" ] 2>/dev/null; then
  echo "You entered $VALUE"
elif [ "$VALUE" -eq "2" ] 2>/dev/null; then
  echo "You successfully entered #2"
elif [ "$VALUE" -eq "3" ] 2>/dev/null; then
  echo "You successfully entered #3"
else
  echo "You didn't follow the directions!"
fi

