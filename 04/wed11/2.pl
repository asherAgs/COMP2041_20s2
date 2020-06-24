#!/usr/bin/perl -w

# Write a Perl program, nargs.pl which prints how many arguments it has been given. For example:
#   ./nargs.pl the quick brown fox
#   4


print $#ARGV+1, "\n" ;
print @ARGV+0, "\n";

