#!/bin/bash


echo 'Yes/no prompt'

read -r -p "Y/n?" -n 1 choice
echo  # print newline

case $choice in
    Y) echo 'You responded Yes' ;;
    n) echo 'You responded no' ;;
    *) echo 'Invalid input' ;;
esac

echo '------------'

echo 'Case insensitive yes/no prompt'

read -r -p "[Yy]/[Nn]?" -n 1 choice
echo  # print newline

case $choice in
    [Yy]) echo 'You responded Yes' ;;
    [Nn]) echo 'You responded no' ;;
    *) echo 'Invalid input' ;;
esac

echo '------------'

echo 'Yes/no prompt with catching invalid inputs'
choice=''  # 'reset' variable

while [[ ! $choice =~ [Yn] ]]; do
    read -r -p "Y/n?" -n 1 choice
    echo  # print newline
done

case $choice in
    [Yy]) echo 'You responded Yes' ;;
    [Nn]) echo 'You responded no' ;;
    *) echo 'Invalid input' ;;
esac

echo '------------'

echo 'Case insensitive yes/no prompt with catching invalid inputs'
choice=''  # 'reset' variable

while [[ ! $choice =~ [YyNn] ]]; do
    read -r -p "[Yy]/[Nn]?" -n 1 choice
    echo  # print newline
done

case $choice in
    [Yy]) echo 'You responded Yes' ;;
    [Nn]) echo 'You responded no' ;;
    *) echo 'Invalid input' ;;
esac
