#!/bin/bash

for i in $@; do
  ping -c 5 $i
done
