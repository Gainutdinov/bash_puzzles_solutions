#!/usr/bin/env bash

main() {
 
  foo=$(echo $2+1 | bc)
  sqSum=0
  sumSq=0
  digNum=`echo -n $2 | wc -c`
  res=0
  for (( i=0; i<${foo}; i++ )); do
    
      sqSum=$(echo $sqSum+$i | bc)
      sumSq=$(echo $sumSq+$i^2 | bc)
  
  done
  sqSum=$(echo $sqSum^2 | bc)
  res=$(echo $sqSum-$sumSq | bc)
  if [ $1 == "square_of_sum" ]; then
      echo $sqSum
  elif [ $1 == "sum_of_squares" ]; then
      echo $sumSq
  elif [ $1 == "difference" ]; then
      echo $res
  fi
 
}


main "$@"
