#!/bin/bash

raw_items=$(ls)

# We filter out directories. We could have used an appropriate shell command
# above (e.g., ls with grep) to do this, but we use a for loop and the `-d`
# condition for demonstration purposes.
for file in $raw_items; do
    if [ ! -d $file ]; then
        items="$items $file"
    fi
done


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
