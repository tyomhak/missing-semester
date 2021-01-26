#!/bin/sh


cat ~/../../usr/share/dict/words | gawk '/(\w*a){3}\w*[^s]$/ {print $1;}' | \
sed -E 's/[a-zA-Z]*([a-zA-Z]{2}$)/\1/' | sort | uniq -c | sort  -rnk1,1 | head -n 3 | \
tee ~/Desktop/study/lecture4/tempor.txt
