#!/bin/bash

var=$1
echo ${var:-default}  # return var if defined and not null, otherwise "default"

var=$1
echo ${var:=default}  # as `:=` but also set var to 'default'
echo $var


var=$1
# If $var exists and is not null return 'lipsum', otherwise return null
echo ${var:+"lipsum"}  # prints null/nothing
var='something'
echo ${var:+"lipsum"}  # prints lipsum
# Use this to test for existence, e.g. ${var:+1} is 1 if $var exists


var='something'
echo ${var:2:5}  # prints methi


var=$1
# Prints:
#   ./string_substitution_example.sh: line 11: var: undefined!
# and exits afterwards
echo ${var:?"undefined!"}
