#!/bin/bash

#The program receives the name of a file or directory.
#If such a file or directory does not exist, an error is displayed.
#If the file exists, information about it and the number of lines are displayed.
#If the directory exists, its contents are displayed.

name=$1
if [ -d "$name" ]; then
  cd $(realpath "$name")
  ls
elif [ -e "$name" ]; then
  echo "Information"
  stat "$name"
  echo "Number of lines"
  wc -l "$name"
else
  echo "$name does not exist"
fi
