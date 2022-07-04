#!/bin/bash

# This is a simple script demonstrating getopts by computing the product or
# sum of arbitrary many arguments.

# Example
# getopts_example_1.sh 3 5 6
# getopts_example_1.sh -s 3 5 6

# default values
compute_sum=0


usage="Usage: $0 [-s] [N0] ... [Nn]"

while getopts ":s" opt; do
    case $opt in
        s) compute_sum=1 ;;
        \?) echo "Unknown option."
            echo $usage
            exit 1 ;;
    esac
done

shift $((OPTIND - 1))
if [ -z "$*" ]; then  # Check if additional arguments have been passed
    echo "Need at least one number."
    echo $usage
    exit 1
fi

if [ $compute_sum -eq 1 ]; then
    result=0

    for x in $@; do
        result=$((result + $x))
    done

    echo "Sum is $result"
else
    result=1

    for x in $@; do
        result=$((result * $x))
    done

    echo "Product is $result"
fi
