#!/bin/bash

# Script demonstrating pushd and popd functions.

echo "Current dir $(pwd)"

echo "Call: pushd /home/"
pushd /home/

echo "Current dir $(pwd)"
echo "Call: popd"
popd
echo "Current dir $(pwd)"
