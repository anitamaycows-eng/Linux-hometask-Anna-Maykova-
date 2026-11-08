#!/bin/bash

#program about products and price
LC_NUMERIC=C awk -F ',' 'NR > 1 {print $4 * $5}' products.csv | sort -nr
sed '/,0$/d' products.csv > available_products.csv

while read -r line; do
  LC_NUMERIC=C  awk -F ',' '$4 > 100'
done < available_products.csv
