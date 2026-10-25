#!/bin/bash

#this program changes size of letters 
# option "-u" means all letters will get upper
# another option ("-l") means all letters will get lower

option=$1
string=$2

if [[ $option == "-u" ]]
then
  echo ${string^^}
elif [[ $option == "-l" ]]
then
  echo ${string,,}
else
  echo "The option $option isn't in range"
fi
