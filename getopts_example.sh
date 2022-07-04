#!/bin/bash

# This is a simple script demonstrating getopts by computing the product of
# two optional arguments.

# Example
#  getopts_example.sh
#  getopts_example.sh -a 7
#  getopts_example.sh -a 5 -b 9

# default values
a=3
b=4


usage="Usage: $0 [-a N] [-b N]"

while getopts ":a:b:" opt; do
    case $opt in
        a) a=$OPTARG ;;
        b) b=$OPTARG ;;
        \?) echo "Unknown option."
            echo $usage
            exit 1 ;;
    esac
done

shift $((OPTIND - 1))
if [ ! -z "$@" ]; then  # Check if additional arguments have been passed
    echo "Too many arguments."
    echo $usage
    exit 1
fi

echo "product of $a and $b is $((a * b))"
