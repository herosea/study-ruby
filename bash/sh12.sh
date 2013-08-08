#!/bin/bash
#Program:
#    This script only accept the flowing parameters: one, tuo, three.
#History:
#    2011/12/05 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo 'This program will print your selection.'
#read -p 'Input your choise: " choise  #暂时取消，可以涕花！
#case $choise in                       #暂时取消，可以替换！
case $1 in
  "one")
    echo "Your choose is ONE"
    ;;
  "two")
    echo "Your choose is TWO"
    ;;
  "three")
    echo "Your choose is THREE"
    ;;
  *)
    echo "Usage $0 (one|two|three)"
    ;;
esac
