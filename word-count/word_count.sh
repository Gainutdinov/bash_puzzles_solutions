#!/usr/bin/env bash

main() {

  wordList=`echo $1 | sed  -e 's/,/ /g' -e "s/[^ a-zA-Z'0-9]//g" -e 's/ \+/ /' `
  #echo $wordList
  wordList=${wordList,,}
  res=()
  keys=()
  for word in $wordList; do 
    word=${word,,}
    #echo $word
    if [[ ${word:0:1} == "'" ]]; then
      word=`echo $word | tr -d "'"  `
    fi
    if [[ "${keys[@]}"  =~ "${word}"  ]]; then
      true
    else
      occur=`echo $wordList | grep -wo $word | wc -l`
      keys+=("$word " )
      res+=("$word: $occur")
    fi
  done
  printf '%s\n' "${res[@]}"
 
}

main "$@"
