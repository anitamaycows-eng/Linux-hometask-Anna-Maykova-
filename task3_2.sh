#!/bin/bash

for f in *.txt; do
  a="${f%.txt}"
  cp "$a.txt" "$a-$( date | tr ' ' '_' ).txt"
done


