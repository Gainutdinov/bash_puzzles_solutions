#!/usr/bin/env bash



main() {

  res=""
  if [[ $# -eq 1  ]];then
      num=$1
      if !((num%3));then
        res+="Pling"
      fi
      if !((num%5));then
        res+="Plang"
      fi
      if !((num%7));then
        res+="Plong"
      fi
      if [ -z $res ];then
        echo $1
      else
        echo $res
      fi
  else
      echo "Usage: leap.sh <year>"
      exit 1
  fi
}


main "$@"
