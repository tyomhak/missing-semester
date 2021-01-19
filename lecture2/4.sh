#!/bin/sh

# A command that recursively finds all HTML files in the folder 
# and makes a zip with them. 
# Note that your command should work even if the files have spaces 

# -print0   ->   end each result element from find with '\0', instead of a space
# xargs     ->   convert STDOUT results into arguments
# -0        ->   use '\0' as a delimiter for xargs, instead of a space

find . -name "*.html" -print0 | xargs -0 zip temp.zip
