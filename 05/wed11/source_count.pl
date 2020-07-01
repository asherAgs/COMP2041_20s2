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


# Get all .c. & .h files
# Loop through files:
#   Display line count
#   add line count to total
# Display the total

$total = 0;
foreach $fname (glob "*.[ch]"){
    open F, "<", $fname or die "$0: File $fname could not be opened\n";

    @lines = <$F>;
    $num_lines = @lines+0;
    $total += $num_lines;

    printf "%7d %s\n", $num_lines, $fname;

    close $F;
}

printf "%7d total\n", $total;
