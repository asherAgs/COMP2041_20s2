#!/usr/bin/perl -w
# Write a Perl program source_count.pl which prints the number of lines of C source code in the current directory. In other words, this Perl program should behave similarly to wc -l *.[ch]. (Note: you are not allowed to use wc or other Unix programs from within the Perl script). For example:
#  ./source_count.pl
#    383 cyclorana.c
#    280 cyclorana.h
#     15 enum.c
#    194 frequency.c
#    624 model.c
#    293 parse.c
#    115 random.c
#     51 smooth.c
#    132 util.c
#     16 util.h
#    410 waveform.c
#   2513 total



# Find all the .c & .h files
# For each file:
#   # Display num lines
#   # add to total
# Print total


$total = 0;
for $fname (glob("*.[ch]")){
    open FILE, "<", $fname or die "Cannot open $fname\n";
    @lines = <FILE>;
    $num_lines = @lines;

    $total += $num_lines;

    print "$num_lines $fname\n";

    close FILE;
}

print "$total total\n"


