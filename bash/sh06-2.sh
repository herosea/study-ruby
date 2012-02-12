#!/bin/bash
#Program:
#    Let's user choose Y or N,and then give a response.
#History:
#    2011/11/29 grandsea First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#让用户输入
read -p 'Please input (Y/N): ' input
if [ "$input" == "Y" ] || [ "$input" == "y" ] ; then
  echo "OK, continue"
  exit 0
fi  
if [ "$input" == "N" ] || [ "$input" == "n" ]; then 
  echo "Oh, interrupt" 
  exit 0
fi
echo "I don't know what you choise is" && exit 0
