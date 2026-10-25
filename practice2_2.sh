#!/bin/bash

#This program changes extensions doc, pdf or txt to extensions from the same range
#If file doesn't exist, the message about error is shown
#If extension isn't in range, the message about error is shown

ex1="doc"
ex2="txt"
ex3="pdf"

name_file=$1
ext_old=$2
ext_new=$3

if [[ ($ext_old != $ex1 && $ext_old != $ex2 && $ext_old != $ex3) \
  || ($ext_new != $ex1 && $ext_new != $ex2 && $ext_new != $ex3) ]]
then
  echo "Available file extensions are doc, txt and pdf"
elif [ ! -e $name_file ]
then
  echo "This file doesn't exist"
else
  name_with_no_ext=${name_file%%.*}
  echo $name_with_no_ext $name_with_no_ext1
  mv $name_file $name_with_no_ext"."$ext_new
fi
