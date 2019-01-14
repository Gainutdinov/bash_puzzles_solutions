#!/usr/bin/env bash

main() {

  foo=$1
  digNum=`echo -n $1 | wc -c`
  res=0
  for (( i=0; i<${#foo}; i++ )); do

      char="${foo:$i:1}"
      res=$(echo $res+$char^$digNum | bc)
  done
  if [ "$res" -eq $1 ]; then
    echo "true"
  else
    echo "false"
  fi

}

main "$@"