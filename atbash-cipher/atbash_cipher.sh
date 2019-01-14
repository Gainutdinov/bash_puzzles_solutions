#!/usr/bin/env bash

main() {
  
  inpStr=`echo $2 | tr "[:upper:]" "[:lower:]"`
  in="abcdefghijklmnopqrstuvwxyz"
  out="zyxwvutsrqponmlkjihgfedcba"

  if [[ $1 =~ "encode" ]]; then

    hh=`  echo $inpStr | tr $in $out | tr -d "[[:punct:]]"`
    # remove spaces
    hh=`echo $hh | tr -d ' '`
    spaceInd=0
    res=""
    for (( i=0; i<${#hh}; i++ )); do
      letter="${hh:$i:1}"

      if (( spaceInd < 5 )); then
        res+="$letter"
        true
        
      else
        res+=" "
        res+="$letter"
        spaceInd=0
      fi
      let "spaceInd++"
    done
    echo "$res"
  elif [[ $1 =~ "decode"  ]];then
    hh=`  echo $inpStr | tr $in $out | tr -d "[[:punct:]]"`
    hh=`echo $hh | tr -d ' '`
    echo "$hh"
  fi

}

main "$@"
