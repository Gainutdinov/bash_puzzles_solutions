#!/usr/bin/env bash

main() {
  
  inpStr=`echo $1 | tr -d " " `
  strLen=${#inpStr}
  if [[ $inpStr =~ ['!@:#$%^&*()_+'] ]] || [[ $inpStr =~ [A-Za-z] ]] \
     || [[ $inpStr =~ ['-'] ]] ;then
    echo "false"
    exit 0
  elif [[ $strLen -gt 1 ]] && [[ $intNum  -eq 0 ]]; then
    intNum=$(echo "$inpStr" | bc)
    if [[ $intNum -eq 0 ]];then
      echo "true"
      exit 0
    fi
  fi
  revStr=$(echo $inpStr | rev)
  intNum=$(echo "$revStr" | bc)
  if [[ $strLen -eq 1 ]] || [[ $intNum -eq 0 ]] || [[ "$inpStr" =~ [A-Za-z] ]]; then
    echo "false"
    exit 0
  else
    j=1
    res=0
    for ((i=0;i<${#revStr}; i++));do
      number=${revStr:$i:1}      
      if [ $((j%2)) -eq 0 ];then
        numDouble="$((number * 2))"
        if (( numDouble > 9 )); then
          number="$(( numDouble - 9 ))" 
        else
          number="$numDouble"
        fi
        A+="$number"
      else
        A+="$nubmer"
      fi
      let "j++"
      res="$((res + number))"
    done
    if [ $((res%10)) -eq 0 ];then
      echo "true"
      exit 0
    else
      echo "false"
      exit 0
    fi
  fi

}

main "$@"
