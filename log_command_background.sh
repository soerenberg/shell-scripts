#!/bin/bash

# Run command in the background and write standard output and standard error
# to shell and a logfile.

usage="$0 [-f logfile] [command...]"

# default value
logfile='logfile'

while getopts ":f:" opt; do
    case $opt in
        f) logfile=$OPTARG ;;
        \?) echo "Unknown option."
            echo $usage
            exit 1 ;;
    esac
done
shift $((OPTIND - 1))

if [ $# -eq 0 ]; then
    echo $usage
    exit 1
fi

if [ -a $logfile ]; then
    echo "$logfile already exists. Abort."
    exit 1
fi

"$@" 2>&1 | tee "$logfile" &
