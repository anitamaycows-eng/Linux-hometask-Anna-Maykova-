#!/bin/bash

#this program changes size of letters 
# option "-l" means all letters will get upper
# another option ("-u") means all letters will get lower

option=$1
string=$2

if [[ $option == "-l" ]]
then
  echo ${string^^}
elif [[ $option == "-u" ]]
then
  echo ${string,,}
else
  echo "The option $option isn't in range"
fi
