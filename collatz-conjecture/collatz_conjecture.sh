#!/usr/bin/env bash

main() {
 
  if [[ $1 =~ ^(-[0-9]*|0) ]]; then
    echo "Error: Only positive numbers are allowed"
    exit 1
  fi
  ORIG=$1
  STEPS=0
  while [ "$ORIG" -ne "1" ]; do
    if [ "$(($ORIG % 2))" -eq "0" ]; then
      ORIG=$(($ORIG / 2))
    else
      ORIG=$((($ORIG * 3) + 1 ))
    fi
    STEPS=$(($STEPS + 1))
  done
  echo "$STEPS"
 
}

main "$@"
