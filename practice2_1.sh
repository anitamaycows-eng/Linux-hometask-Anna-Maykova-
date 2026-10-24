#!/bin/bash

if [ $1 = "-l" ]; then
  echo "$2" | tr [:lower:] [:upper:]
else
  echo "$2" | tr [:upper:] [:lower:]
fi
