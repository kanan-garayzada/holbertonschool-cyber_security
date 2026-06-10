#!/bin/bash
subfinder -silent -d $1 | tee >(while read sub; do host $sub | awk "/has address/ {print \"$sub,\" \$4}"; done > $1.txt)
