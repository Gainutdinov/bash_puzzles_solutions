#!/usr/bin/env bash

main() {
 
  DNA=$1
  RNA=""
  A=0
  C=0
  G=0
  T=0
  for (( i=0; i<${#DNA}; i++ )); do
    letter=${DNA:$i:1}
#    echo $letter
    case "$letter" in
      G)
       let "G++" 
       ;;
      C)
       let "C++"
       ;;
      T)
       let "T++"
       ;;
      A)
       let "A++"
       ;;
      *)
       echo "Invalid nucleotide in strand"
       exit 1
       ;;
    esac
  done
  echo -e "A: $A\nC: $C\nG: $G\nT: $T"

}

main "$@"
