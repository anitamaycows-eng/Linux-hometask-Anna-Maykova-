#!/bin/bash

mkdir renamed

for i in 1 2 3 4 5
do
  touch "document$i.txt"
done

ls document*.txt > list_file.txt

while read file
do
  cat $file
done < list_file.txt

for i in 1 2 3 4 5
do
  mv "document$i.txt" renamed/"file$i.txt"
done

ls renamed
