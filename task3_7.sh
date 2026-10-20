#!/bin/bash

a=$1
j=$a

while [ $j -gt 0 ]; do
  i=$j
  while [ $i -gt 0 ]; do
    echo -n "*"
    ((i--))
  done
  echo ""
  ((j--))
done
