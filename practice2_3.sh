#!/bin/bash

#this program checks if number of arguments is equal to 3

if [[ $# -ne 3 ]]
then
  echo "Error. Number of arguments should be equal to 3"
else
  echo "Processing"
fi
