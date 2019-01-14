#!/usr/bin/env bash

main() {
  
  telNum=`echo $1 | tr -d '. \-()+,'  `
 
  regex='^1?[2-9]{1}[0-9]{2}[2-9]{1}[0-9]{5}'
  
  if [[ ${#telNum} > 11 ]]; then
   
    echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
    exit 1
  fi
  if [[ $1 == *"("* ]]; then
    cityCode=`echo $1 | cut -d "(" -f2 | cut -d ")" -f1`
    if [[ ${cityCode:0:1} == 1 ]];then
      echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
      exit 1
    fi
  fi
  if [[ ${#telNum} == 11 ]]; then
    if [[ ${telNum:0:1} != 1 ]]; then
      echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
      exit 1
    elif [[ $telNum =~ $regex ]]; then
      echo "${telNum:1}"
      
    fi
  elif [[ $telNum =~ $regex ]]; then
    echo "$telNum"
  else
    echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
    exit 1
  fi
i
}

main "$@"
