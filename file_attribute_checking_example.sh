#!/bin/bash

# Demonstrate file attribute checks in bash.

usage="Usage: file_attribute_checking_example.sh [file_or_dir] [file_or_dir]"

file=${1:-$0}
file_2=$2

if [ "$#" -gt 2 ]; then
    echo $usage
    exit 1
fi

if [ -a $file ]; then  # Alternative: -e
    echo "File exists!"
else
    echo "File does not exists!"
fi
if [ -d $file ]; then
    echo "File exists and is a directory!"
fi
if [ -f $file ]; then
    echo "File exists and is a regular file!"
fi
if [ -r $file ]; then
    echo "You can read file!"
fi
if [ -s $file ]; then
    echo "File exists and is not empty!"
fi
if [ -w $file ]; then
    echo "You can write file!"
fi
if [ -x $file ]; then
    echo "You can execute file (if file), or search (if directory)!"
fi
if [ -N $file ]; then
    echo "File was modified since it was last read!"
fi
if [ -O $file ]; then
    echo "File is owned by you!"
fi
if [ -G $file ]; then
    echo "File's group id matches yours (or one of yours)."
fi

if [ ! -z $file_2 ]; then
    if [ ! -a $file_2 ]; then
        echo "$file_2 does not exist."
    fi
    if [ $file -nt $file_2 ]; then
        echo "File $file is newer than $file_2"
    fi
    if [ $file -ot $file_2 ]; then
        echo "File $file is older than $file_2"
    fi
fi
