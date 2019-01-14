#!/usr/bin/env bash

main() {

  wordList=$1
  acronym=""
  for word in $wordList; do
    if [[ $word == *"-"*  ]]; then
      for i in $(echo $word | tr "-" "\n"); do
        acronym+=${i:0:1}
        #echo $i
      done
    else
      acronym+="${word:0:1}"
    fi
  done
  echo ${acronym^^}
 
}

main "$@"
