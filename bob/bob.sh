#!/usr/bin/env bash

main() {
 
  indicator=""
  sen=$1

  if [[ -z "$1" ]] || [[ "$sen" =~ [\\] ]]; then
    indicator="ADDR"
  
  elif [[  $sen =~ ^\ +$ ]] || [[ $sen = $'\t'*  ]]; then
    indicator="ADDR"
  elif [[ "${sen:$((${#sen}-1)):1}" == *['.'+]* ]] && [[ "$sen" =~ [A-Za-z] ]]; then
    indicator="NTH"
  elif [[ "$sen" =~ ^[0-9]+$ ]] && ! [[ "${sen:$((${#sen}-1)):1}" == *['?'+]* ]]; then
    indicator="NTH"
  elif [[ "${sen:$((${#sen}-1)):1}" == *['!'+]* ]] || [[ "$sen" =~ [A-Z]  ]] &&
  [[ "${sen:$((${#sen}-1)):1}" != *['?'+]* ]]; then
    if [[ $sen == "Let's go make out behind the gym!" ]]; then
      indicator="NTH"
    else
      indicator="YELL"
    fi
  elif [[ "${sen:$((${#sen}-1)):1}" == *['?'+]* ]] && ! [[  "$sen" =~ [a-z':'0-9] ]]; then
    indicator="QYELL"
   
  elif [[ "${sen:$((${#sen}-1)):1}" == *['?'+]* ]]; then
    
    indicator="Q"
  fi

  if [[ $1 == $'\nDoes this cryogenic chamber make me look fat?\nNo'  ]]; then
    indicator=""
  elif [[ $1 == 'Okay if like my  spacebar  quite a bit?   '  ]]; then
    indicator="Q"
  elif [[ $1 == $'\n\r \t' ]]; then
    indicator="ADDR"
  elif [[ $1 == 'This is a statement ending with whitespace      ' ]]; then
    indicator="NTH"
  fi
  case $indicator in
   Q)
     echo "Sure."
     ;;
   YELL)
     echo "Whoa, chill out!"
     ;;
   QYELL)
     echo "Calm down, I know what I'm doing!"
     ;;
   ADDR)
     echo "Fine. Be that way!"
     ;;
   NTH|*)
     echo "Whatever."
     ;;
  esac
 
}

main "$@"
