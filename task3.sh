#!/bin/bash

a=$1

if [[ "$a" =~ ^[A-Za-z0-9_-]+\.tsv$ || "$a" =~ ^[A-Za-z0-9_-]+\.csv$ ]]; then
  awk '{print NF}' $a >> count_columns.txt
  var=$( sort count_columns.txt | uniq | wc -l )
  if [ $var -ne 1 ]; then
    echo "File is incorrect"
  else
    echo "File is correct"
  fi
else
  echo "The format should be tsv or csv"
fi

rm count_columns.txt
