#!/bin/bash

sed -e 's/{//' -e 's/}//' -e 's/"//g' -e 's/,//g'\
  -e 's/: /=/g' -e 's/ //' config.json > result
awk '$0="CONF_"$0' result > result2

for line in "$(cat result2)"; do
    export "$line"
done
