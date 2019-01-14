#!/usr/bin/env bash

romansDict() {
  case $1 in
    1)
      echo "I"
      ;;
    5)
      echo "V"
      ;;
    10)
      echo "X"
      ;;
    50)
      echo "L"
      ;;
    100)
      echo "C"
      ;;
    500)
      echo "D"
      ;;
    1000)
      echo "M"
      ;;
    5000)
      echo "G"
      ;;
    10000)
      echo "H"
      ;;
  esac
}

main() {
  A=$1
  div=1

  while [ $A -ge $div  ]; do
    let " div = div * 10 "
  done

  let "div = div / 10 "
  res=""

  while [ $A -ne 0 ]; do
    let " lastNum = A / div "
    lastNum=` echo "$lastNum"  | bc `

    if [ "$lastNum" -le 3 ]; then
      tmpVar=` romansDict $div `
     # echo "$tempVar"
      for n in $(seq $lastNum); 
      do
        res+="$tmpVar"
      done
    elif [ "$lastNum" -eq 4 ]; then
    #  echo "-----------$div"
      tmpVar1=` romansDict $div `
      let " div1 = div * 5"
      tmpVar2=` romansDict $div1 `
      res+="$tmpVar1"
      res+="$tmpVar2"
#      let "tmpVar = tmpVar1 + tmpVar2"
    elif [ "$lastNum" -ge 5 ] && [ "$lastNum" -le 8 ]; then
      let " div1 = div * 5"
      tmpVar1=` romansDict $div1 `
      res+="$tmpVar1"

      tmpVar=` romansDict $div` 
      let "lastNum1 = lastNum - 5"
      for n in $(seq $lastNum1);
      do
        res+="$tmpVar"
      done
    elif [ "$lastNum" -eq 9 ]; then
      tmpVar=`romansDict $div`
      res+="$tmpVar"
      let "lastNum1 = div * 10"
      tmpVar1=` romansDict $lastNum1 `
      res+="$tmpVar1"
    fi
    let "A = A % div"
    A=` echo "$A"  | bc `
    let "div = div / 10"
    sleep 2
  done
  
  echo "$res"
}

main "$@"
#romansDict "$@"
