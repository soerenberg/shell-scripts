#!/bin/bash

# Demonstrate how to print bold, underline, highlighted and 8 color text

NO=`tput sgr0`  # no special formatting
B=`tput bold`   # bold text
U=`tput smul`   # underline text
E=`tput smso`   # emphasize / highlight text

A=`tput setaf 1`

echo "No bold ${B}Bold text ${NO} no bold"
echo "No underline ${U}Underline text ${NO} no underline"
echo "Text ${E}Highlighted text ${NO} no highlight"
echo "Text $A${E}Color highlight text ${NO} no highlight"

echo -e "\nPrint all 8 standard colors:"
for i in $(seq 0 7) ; do
    echo "`tput setaf $i`This is color"
done
