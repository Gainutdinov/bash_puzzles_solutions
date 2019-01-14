#!/usr/bin/env bash



main() {
  
  if [ "$#" -eq 0 ];then
    echo "Usage: ./error_handling <greetee>"
    exit 1
  elif [ "$#" -eq 2 ];then
    exit 13
  elif [ "$#" -eq 1 ];then
    echo "Hello, $1"
  fi;
}

main "$@"
