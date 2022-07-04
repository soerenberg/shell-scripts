#!/bin/bash

# Demonstrate writing functions in bash.

my_func ()
{
    echo "Called: $0 $@"

    pwd  # do something here...
    es=$?
    echo "Exit function with exit code $es"
    return $es
}


my_func
my_func abc 100
