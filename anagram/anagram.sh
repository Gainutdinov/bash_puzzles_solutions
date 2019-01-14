#!/usr/bin/env bash

main() {

  wrd=$1
  wordList=$2
  anagram=()
  for word in $wordList; do
    orig_word=$word
    word=${word,,}
    wrd=${wrd,,}
    if [ ${#wrd} == ${#word} ] && [[ $word != $wrd  ]]; then  
        count=0
        for (( i=0; i<${#wrd}; i++ )); do 
          if [[ $word == *"${wrd:$i:1}"* ]]; then
            chr=${wrd:$i:1}
            word=${word/$chr}
            let "count++"
          fi
        done
        if [[ $count == ${#orig_word} ]]; then
          anagram+=($orig_word)
        fi

    fi

  done
  echo ${anagram[@]}
 
}

main "$@"
