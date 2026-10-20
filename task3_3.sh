#!/bin/bash

a=$1

tr ',' ' ' < $1 | tr '.' ' ' | tr -s ' ' '\n' | sort | uniq -c | sort -k1nr | head -n 10
