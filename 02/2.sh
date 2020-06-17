#!/bin/sh

# Implement a shell script called seq.sh for writing sequences of integers onto its standard output, with one integer per line. The script can take up to three arguments, and behaves as follows:
# 
# seq.sh LAST writes all numbers from 1 up to LAST, inclusive. For example:
# 
# ./seq.sh 5
# 1
# 2
# 3
# 4
# 5
# seq.sh FIRST LAST writes all numbers from FIRST up to LAST, inclusive. For example:
# 
# ./seq.sh 2 6
# 2
# 3
# 4
# 5
# 6
# seq.sh FIRST INCREMENT LAST writes all numbers from FIRST to LAST in steps of INCREMENT, inclusive; that is, it writes the sequence FIRST, FIRST + INCREMENT, FIRST + 2*INCREMENT, ..., up to the largest integer in this sequence less than or equal to LAST. For example:
# 
# ./seq.sh 3 5 24
# 3
# 8
# 13
# 18
# 23


# check arguments
# set parameters
# print from first to last in incremenets of inc


if test "$#" -eq 1
then
    first=1
    last=$1
    inc=1
elif test "$#" -eq 2
then
    first=$1
    last=$2
    inc=1
elif test "$#" -eq 3
then
    first=$1
    inc=$2
    last=$3
else
    # usage
    echo "Usage:
  $0 last            ... prints numbers in range 1..last
  $0 first last      ... prints numbers in range first..last
  $0 first 2nd last  ... prints numbers first,2nd,..last
                    (using difference between first and
                     2nd as the increment)"
    exit 1
fi


# validate first, last, inc



i=$first
while test $i -le $last
do
    echo "$i"
    i=`expr $i + $inc`
done
