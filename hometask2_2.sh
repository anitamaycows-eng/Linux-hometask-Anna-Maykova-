#!/bin/bash

file=$1
organism=$2

if [[ ! -e "$file" ]]; then
  echo "File doesn't exist"
elif [[ "$organism" != "human" && "$organism" != "rat" && "$organism" != "mouse" && "$organism" != "fly" ]]; then
  echo "Error. Organism is not available. Available organisms are mouse, rat, fly, human"
else
  echo "File $file in process"
fi
