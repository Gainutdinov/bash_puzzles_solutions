#!/bin/bash
# simple if script for guessing a number

echo "Guess the Secret Number"
echo "======================="
echo "Enter a number Between 1 and 5: "
read GUESS
if [ $GUESS -eq 3 ]
  then
    echo "You guessed the correct number!"
fi
# testing for file $FILENAME and readability
$FILENAME='superduper'
if [ -a $FILENAME ] && [ -r $FILENAME]
  then
    echo "File $FILENAME indeed exist!"
fi