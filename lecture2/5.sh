#!/bin/sh

# (Advanced) Write a command or script to recursively find the most recently modified file in a directory. 
# More generally, can you list all files by recency?

# find from this dir, recursively
# all that are of type (f)ile
# ignore all that have "git" in their path
# end each element with '\0', instead of space

# xargs             ->  convert STDIN to arguments
# -0                ->  delimiter for elements is '\0', not space
# -stat -f "%m %N"  ->  get stats for each file, and (f)ormat them into "(m)onth (N)ame"
# sort -rn          ->  sort (n)umerically, (r)eversed
# head -1           ->  take the first element, from the end
# cut -f 2- -d " "  ->  take from input list (f), starting from 2-nd element till the end, delimiter ' ' (space)


find . -type f -not -path "*git*" -print0 | xargs -0 stat -f "%m %N" | sort -rn | head -1 | cut -f2- -d" "