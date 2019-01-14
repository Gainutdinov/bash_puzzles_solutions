#!/usr/bin/env bash



main() {
  letInd=`a="$1";  printf '%d\n' "'$a"`
  let "letInd = letInd - 65"
  letter="$1"
  res=""
  secHalf=""
  #numSpace=""
  if [ "$letter" = "A" ];then
    res="A"
  elif [ "$letter" = "B" ]; then
    res=`printf " A \nB B\n A "`
  else
    # first line of the diamond
    let "LRSPACES=letInd "
    for x in $(seq $LRSPACES); do
      line+=" "
    done
    line+="A"
    for x in $(seq $LRSPACES); do
      line+=" "
    done
    line="$line"$'\n'
    res+="$line"
    secHalf+="$line"
    # -------------------
    let " centerSpace = ( LRSPACES * 2 ) - 1 "
    innerSpace=1
    for L in {B..Z}; do
      line=""
      if [ $L = "$letter" ]; then
        line="$L"
        for x in $(seq $innerSpace); do
          line+=" "
        done
        line+="$L"$'\n'
        res+="$line"
        res+="$secHalf"
        # remove last line from the variable
        res=` echo "$res" | sed '$d'`
        echo "$res"
        exit 0
      else
        let "LRSPACES = LRSPACES - 1"
        for x in $(seq $LRSPACES); do
          line+=" "
        done
        line+="$L"
        for x in $(seq $innerSpace); do
          line+=" "
        done
        line+="$L"
        for x in $(seq $LRSPACES); do
          line+=" "
        done
        line="$line"$'\n'
        res+="$line"
        secHalf="$line""$secHalf"
        let "innerSpace = innerSpace + 2"
      fi
    done
  fi
 
  echo "$res"
 
}

main "$@"