#!/usr/bin/env bash


main() {
 
  if [[ $# -eq 1 && $1 =~ ^[0-9]*$ ]];then
          year=$1
          if (( !(year % 4) && ( year % 100 || !(year % 400) ) ));then
            echo "true"
          else
            echo "false"
          fi
  else
      echo "Usage: leap.sh <year>"
      exit 1
  fi
}

main "$@"
