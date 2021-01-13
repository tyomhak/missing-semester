#!/bin/sh

while :
do
    /bin/sh ./script.sh > /tmp/out_ 2> /tmp/err_

    if [[ $? -ne 0 ]]; then
        mv /tmp/out_ ./out_.txt
        mv /tmp/err_ ./err_.txt
        break
    fi
done
