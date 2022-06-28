#!/bin/bash
primary=$(xrandr | sed -n 's/\(.*\) connected primary .*/\1/p')
secondaries=$(xrandr | sed -n 's/\(.*\) connected (\?[[:digit:]]\?.*/\1/p')

echo "Primary detected: $primary"
echo "Secondary display(s) detected: $secondaries"

for sec in $secondaries; do
    echo $sec
    xrandr --output "$sec" --left-of "$primary"
    xrandr --output "$sec" --auto
done
