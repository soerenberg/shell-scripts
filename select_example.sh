#!/bin/bash

items=$(ls)
PS3="cat which file? "  # select prompt

select selection in $items; do
    if [ $selection ]; then
        echo selected $selection with number $REPLY
        echo "$(cat $selection)"  # use quotes to print newlines
        break
    else
        echo "invalid try again"
    fi
done
