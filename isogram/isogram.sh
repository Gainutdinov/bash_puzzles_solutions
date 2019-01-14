#!/usr/bin/env bash

main() {
  
  if [[ -z $1 ]]; then
    echo "true"
    exit 0
  else
    isogram=`echo $1 | tr -d '*. \-()+,' | tr '[:upper:]' '[:lower:]' `
    
    for (( i=0; i<${#isogram}; i++ )); do
      occurence=`echo "$isogram" | grep -o "${isogram:$i:1}" | wc -l ` 
      if [[ $occurence != 1 ]]; then
        echo "false"
        exit 0
      fi
    done
  fi
  echo "true"

}

main "$@"
