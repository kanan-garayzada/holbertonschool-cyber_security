#!/bin/bash
subfinder -silent -d $1 | tee >(while read s; do echo "$s,$(host $s | awk '/has address/ {print $4; exit}')"; done > $1.txt)
