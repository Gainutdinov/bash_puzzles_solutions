#!/usr/bin/env bash

main() {
  
  regex1="^[0-9]{4}-[0-9]{2}-[0-9]{2}Z$"
  regex2="^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}Z"
  gig="1000000000"

  if [[ $1 =~ $regex1  ]]; then
    dateToSeconds=`date -d "$1" "+%s" `

    sum="$( bc <<<"$dateToSeconds + $gig" )"
    ans=`date -d @$sum '+%a %b %-d %H:%M:%S UTC %Y'`
    echo "$ans"
  elif [[ $1 =~ $regex2  ]]; then
    dateToSeconds=`date -d "$1" "+%s" `
    sum="$( bc <<<"$dateToSeconds + $gig" )"
    ans=`date -d @$sum '+%a %b %-d %H:%M:%S UTC %Y' `
    echo "$ans"
  
  fi
 
}

main "$@"
