#!/usr/bin/env bash

main() {

  string=$1
  string=${string,,}
  count=0

  for i in {a..z}; do
    [[ $string = *$i* ]] && let "count++"
  done

  if [[ $count -eq 26 ]]; then
    echo "true"
    exit 0
  else
    echo "false"
    exit 0
  fi
 
}

main "$@"
