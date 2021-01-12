#!/bin/sh

# ./semester                -> get results of semester script
# | grep 'last-modified'    -> find the line including the specified text ('last-modified') from results of the script
# | cut -d ' ' -f 2-        -> divide the line by delimiters (-d ' '), and get the items from the list starting from 2 to the end (-f 2-)
# > last-modified.txt       -> store the results in the .txt file

./semester | grep 'last-modified' | cut -d ' ' -f 2- > last-modified.txt