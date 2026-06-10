#!/bin/bash
subfinder -silent -d $1 | tee >(while read sub; do echo $sub,$(dig +short $sub | grep -E "^[0-9.]+$" | head -1); done > $1.txt)
