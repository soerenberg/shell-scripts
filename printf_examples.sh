#!/bin/bash

printf "Examples of printf\n"

loc='there'

# String substitution
printf "%s %s!\n" Hey $loc

printf "First char of \$loc is %c\n" $loc

fp=123.4567
printf "\$fp is %f\n" $fp  # 123.456700
printf "\$fp is %e\n" $fp  # 1.234567e+02
printf "\$fp is %g\n" $fp  # shorter option of %e or %f, no trailung zeros
                           # 123.4567

int=1023
printf "\$int is %d\n" $int
