#!/bin/bash

for file in *; do
  if [[ ! -d $file ]]; then
    type="${file##*.}"
    echo "$type" >> types.txt
  fi
done

echo "Number of different types"

if [[ -e types.txt ]]; then
  sort types.txt | uniq -c
else
  echo "No files"
fi

echo "Total size"
du -sh .
