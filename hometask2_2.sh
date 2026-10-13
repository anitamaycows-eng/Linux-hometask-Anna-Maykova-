#!/bin/bash

# The program receives a file and the name of the organism. Next, the file is processed.
# The program throws an error if the organism is not found or if the file does not exist.

file=$1
organism=$2

if [[ ! -e "$file" ]]; then
  echo "File doesn't exist"
elif [[ "$organism" != "human" && "$organism" != "rat" && "$organism" != "mouse" && "$organism" != "fly" ]]; then
  echo "Error. Organism is not available. Available organisms are mouse, rat, fly, human"
else
  echo "File $file in process"
fi
