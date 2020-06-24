#!/usr/bin/perl -w

# Write a Perl program, devowel.pl which filters any vowels from its input. For example:
#   ./devowel.plThe quick brown fox
#   jumped over the lazy dog.
#
#   Th qck brwn fx
#   jmpd vr th lzy dg.

# Loop over stdin
#  Regex substitue vowels with nothing

while ($line = <>){
    $line =~ s/[aeiou]//g;
    print "$line";
}
