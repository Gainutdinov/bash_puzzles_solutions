#!/bin/bash
# while loop example

echo "Enter the number of times to display the 'Hello world' message"
read DISPLAYNUMBER

COUNT=1

while [ $COUNT -le $DISPLAYNUMBER ]; do
  echo "hello world - $COUNT"
  COUNT="`expr $COUNT + 1`"
done