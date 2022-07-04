#!/bin/bash

# This is a very simplistic shell script to demonstrate different control
# flow statements in bash.

raw_items=$(ls)

# We filter out directories. We could have used an appropriate shell command
# above (e.g., ls with grep) to do this, but we use a for loop and the `-d`
# condition for demonstration purposes.
for file in $raw_items; do
    if [ ! -d $file ]; then
        items="$items $file"
    fi
done


PS3="Select file? "  # select prompt
select selection in $items; do
    if [ $selection ]; then
        echo selected $selection with number $REPLY
        selected_file=$selection
        break
    else
        echo "invalid try again"
    fi
done


options="cat file,print write permission,print execute permissions"
IFS_OLD=$IFS  # Since the actions contain spaces we temporarily change IFS.
IFS=","
PS3="Select action "
select selection in $options; do
    if [ $selection ]; then
        case $REPLY in
            "1") echo "$(cat $selected_file)" ;;  # use quotes to print newlines
            "2") if [ -w $selected_file ]; then
                    echo "You have write permission"
                 else
                    echo "You do not have write permissions."
                 fi ;;
            "3") if [ -x $selected_file ]; then
                    echo "You have execute permission"
                 else
                    echo "You do not have execute permissions."
                 fi ;;
        esac
        break
    else
        echo "invalid try again"
    fi
done
IFS=$IFS_OLD
