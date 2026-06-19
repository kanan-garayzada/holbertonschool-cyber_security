#!/bin/bash

subfinder -silent -d "$1" | tee >(while read -r sub; do
    host "$sub" | awk -v sub="$sub" '/has address/ {print sub "," $4}'
done > "$1.txt")
