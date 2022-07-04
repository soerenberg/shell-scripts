#!/bin/bash

# Demonstrate different ways of string pattern matching in bash.

path="foo/bar/lipsum/myfile.o.cpp"

echo "Original path: $path"
echo "\${path#*/} = ${path#*/}"  # remove left-most directory
echo "\${path##*/} = ${path##*/}"  # remove all directories
echo "\${path%.*} = ${path%.*}"  # remove right-most file extension
echo "\${path%%.*} = ${path%%.*}"  # remove all file extension
echo "\${path%/*} = ${path%/*}"  # remove file name or right-most directory
echo "\${path%.cpp} = ${path%.cpp}.h"  # replace .cpp extension with .h
