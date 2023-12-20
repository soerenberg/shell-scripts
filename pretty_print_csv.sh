#!/bin/bash
awk -F',' '
{ for(i=1; i<=NF; i++) {
    max[i] = (max[i] > length($i)) ? max[i] : length($i)
    cells[NR,i] = $i
  }
  nfs[NR] = NF
  nfmax = NF > nfmax ? NF : nfmax
}
END {
    for(j=1; j<=nfmax; j++) {
        fmt[j] = sprintf("%%-%ds", max[j] + 1)
        max_width += max[j] + 1
    }
    for(i=1; i<=NR; i++) {
        for(j=1; j<=nfs[i]; j++) {
            printf(fmt[j], cells[i, j])
        }
        print("")
        if (i==1) {
            for(j=1; j<=max_width; j++) {
                printf("-")
            }
            print("")
        }
    }
}
' $*
