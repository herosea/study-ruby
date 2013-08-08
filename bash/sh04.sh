#!/bin/bash
#Program:
#    User input 2 integer numbers; program will cross these two numbers.
#History:
#2011/11/27 grandsea First release
PATH=/bin:/sbin:/usr/bin:usrsbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "You should input 2 numbers, I will cross them! \n"
read -p "first number:"  firstnu
read -p "second number: " secnu
total=$(($firstnu*$secnu))
echo -e "\nThe result of $firstnu x $secnu is ==> $total"
