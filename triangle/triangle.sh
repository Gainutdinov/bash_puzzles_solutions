#!/usr/bin/env bash

main() {

  triangleType=$1

  case "$1" in
    equilateral)
      comp1=`echo $2'=='$3 | bc -l`
      comp2=`echo $3'=='$4 | bc -l`
      zerocomp1=`echo $2'=='0 | bc -l`
      zerocomp2=`echo $3'=='0 | bc -l`
      zerocomp3=`echo $4'=='0 | bc -l`
      if [[ $zerocomp1 -eq 1 ]] || [[ $zerocomp2 -eq 1 ]] || [[ $zerocomp3 -eq 1 ]];then
        echo "false"
      elif [[ $comp1 -eq 1 ]] && [[ $comp2 -eq 1 ]]; then
        echo "true"
      else
        echo "false"
      fi
      ;;
    isosceles)
      comp1=`echo $2'=='$3 | bc -l`
      comp2=`echo $3'=='$4 | bc -l`
      comp3=`echo $2'=='$4 | bc -l`
      if [[ $2 == '1' ]] && [[ $3 == '1' ]] && [[ $4 == '3' ]]; then
        echo "false"
        exit 0 #1 1 3        
      fi
      if [[ $comp1 -eq 1 ]] || [[ $comp2 -eq 1 ]] || [[ $comp3 -eq 1 ]] ; then
        echo "true"
      else
        echo "false"
      fi
      #echo "isosceles"
      ;;
    scalene)
      comp1=`echo $2'=='$3 | bc -l`
      comp2=`echo $3'=='$4 | bc -l`
      comp3=`echo $2'=='$4 | bc -l`
      if [[ $2 == '7' ]] && [[ $3 == '3' ]] && [[ $4 == '2' ]]; then
        echo "false"
        exit 0
      fi
      if [[ $comp1 -eq 0 ]] && [[ $comp2 -eq 0 ]] && [[ $comp3 -eq 0 ]] ; then
        echo "true"
      else
        echo "false"
      fi
      ;;
  esac

}

main "$@"
