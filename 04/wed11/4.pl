#!/usr/bin/perl

# Write a simple version of the head command in Perl, that accepts an optional command line argument in the form -n, where n is a number, and displays the first n lines from its standard input. If the -n option is not used, then the program simply displays the first ten lines from its standard input.
# Examples of use:

#   perl head.pl <file2        # display first ten lines of file2
#   ...
#   perl head.pl -10 <file2     # same as previous command
#   ...
#   perl head.pl -5 <file2      # display first five lines of file2
#   ...

# Validation (check for optional 1st arg; if given, check positive int)
# Loop through STDIN
#   print lines to n



[a,b,c,d]
shift
[b,c,d]


# Validate
if ((@ARGV == 1) && ($ARGV[0] =~ /-[1-9][0-9]*/) ){
    $n = $ARGV[0]; #shift @ARGV;
    $n =~ s/-//g;
} elsif (@ARGV == 0) {
    $n = 10;
} else {
    die "Usage: $0 -n\n";
}


$i = 0;
while ($line = <STDIN>){
    if ($i >= $n){
        last;
    }
    print "$line";
    $i ++;
}



