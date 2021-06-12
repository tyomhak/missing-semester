#!/bin/env bash

cat /usr/share/dict/words | grep -P "^(.*a){3}[a-z]*$" | sed -E 's/^.*(\w{2})$/\1/' | uniq -c | wc -l

