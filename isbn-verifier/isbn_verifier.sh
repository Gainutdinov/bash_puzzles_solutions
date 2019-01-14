#!/usr/bin/env bash



main() {
  inpStr="$1"
  s=0
  t=0
  res=0
  inpStr=`echo $inpStr | tr -d "-" `
  if [ "${inpStr+x$inpStr}" = "x" ]; then
    echo "false"
    exit 0
  fi
  for (( i=0;i<${#inpStr}; i++ )); do
    digit="${inpStr:$i:1}"
    
    let " j = i + 1"
    if [ "$digit" = "X" ] && [[ "$j" -eq "${#inpStr}" ]];then
      let "t = t + 10"
      let "s = s + t"
    elif [[ "${#inpStr}" -ne 10 ]] || [ "${inpStr+x$inpStr}" = "x" ]; then
      echo "false"
      exit 0
    elif [[ $digit =~ ^[0-9]+$ ]]; then 
      let "t = t + digit"
      let "s = s + t"
    else
      echo "false"
      exit 0
    fi
  done
  let "res = s % 11"
  if [ "$res" -eq 0 ];then
    echo "true"
  else
    echo "false"
  fi
 
}

main "$@"
