#!/usr/bin/env bash


main() {
 
  if  [[ $1 =~ ^(-[0-9]*|0)$ || $1 =~ 0 || $1 -gt 64  ]];then
    echo "Error: invalid input"
    exit 1
  
  elif [[ $# -ne 0 ]];then
      num=$1
      if [ "$1" == "total" ];then
        num=65
      fi
      res=1
      for ((i=1;i<num;i++)) do
        
        res=$(echo $res*2 | bc)
      
      done
      if [ "$1" == "total" ];then
        res=$(echo $res-1 | bc)
      fi
      echo $res
  fi
}

main "$@"
