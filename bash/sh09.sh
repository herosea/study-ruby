#!/bin/bash
#Program:
#    If the parameter is "hello" say Hello,how are you,else notify user input hello as argument
#History:
#    2011/11/30 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
if [ "$1" == "hello" ]; then
  echo "Hello, how are you!"
  exit 0
elif [ "$1" == "" ]; then 
  echo "You must give a parameter as => '$0' someword"
  exit 0
else
  echo "You must input ====> '$0' hello"
  exit 0
fi
