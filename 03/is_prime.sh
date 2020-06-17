#!/bin/sh

# Write a shell script named is_prime.sh which given an integer as argment, tests whether it is prime and prints a suitable message:
# is_prime.sh 42
# 42 is not prime
# is_prime.sh 113
# 113 is prime
# Your script should exit with a non-zero exit status if its argument is not prime.

# Validate - num args, check $1 is positive int
# Loop i from 2 to n-1  (sqrt(11))
#   if n is divisible by i, not a prime
# If finish loop, prime


# Validation
if test "$#" -ne 1
then
    echo "Usage: $0 <positive int>"
    exit 1
fi

#check $1 is a positive int
sh is_int.sh "$1" > /dev/null
if test "$?" -ne 0
then
    echo "Usage: $0 <positive int>"
    exit 1
fi

n=$1
i=2

while test $i -lt $n
do
    mod=`expr $n % $i`
    if test $mod -eq 0
    then
        echo "$n is not prime"
        exit 1
    fi
    i=`expr $i + 1`
done

echo "$n is prime"
