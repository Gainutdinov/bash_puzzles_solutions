#!/usr/bin/env bash

main() {
  foo=`echo "$1" | tr a-z A-Z` 

  res=0
  for (( i=0; i<${#foo}; i++ )); do
      #echo "${foo:$i:1}"
      case "${foo:$i:1}" in
        A | E |  I | O | U | L | N | R |  S | T)
          #echo "A"
          res=$(echo $res+1 | bc)
          ;;
        D | G)
          #echo "D"
          res=$(echo $res+2 | bc)
          ;;
        B | C | M | P)
          #echo "B"
          res=$(echo $res+3 | bc)
          ;;
        F | H | V | W | Y)
          #echo "F"
          res=$(echo $res+4 | bc)
          ;;
        K)  
          #echo "K"
          res=$(echo $res+5 | bc)
          ;;
        J | X)
          #echo "J"
          res=$(echo $res+8 | bc)
          ;;
        Q | Z)
          #echo "Q"
          res=$(echo $res+10 | bc)
          ;;
       esac
  done
  echo $res
}

main "$@"

