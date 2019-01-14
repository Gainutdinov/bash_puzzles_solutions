#!/usr/bin/env bash

main() {
 
  DNA=$1
  RNA=""
  for (( i=0; i<${#DNA}; i++ )); do
    letter=${DNA:$i:1}
#    echo $letter
    case "$letter" in
      G)
       RNA+="C"
       ;;
      C)
       RNA+="G"
       ;;
      T)
       RNA+="A"
       ;;
      A)
       RNA+="U"
       ;;
      *)
       echo "Invalid nucleotide detected."
       exit 1
       ;;
    esac
  done
  echo "$RNA"
 
}

main "$@"
