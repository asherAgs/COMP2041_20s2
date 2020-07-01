#!/usr/bin/perl -w
# Write a Perl function which takes an integer argument n and reads the next n lines of input and returns them as a string.

sub n_lines {
    my ($n) = @_;

    my $ret_string = "";
    foreach my $i (1..$n){
        my $line = <STDIN>;
        chomp $line;
        $ret_string .=  $line;
    }

    return $ret_string;
}



print n_lines(3);

