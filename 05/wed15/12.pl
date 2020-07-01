#!/usr/bin/perl -w
# Write a Perl function which takes an integer argument n and reads the next n lines of input and returns them as a string.



sub n_lines {
    my ($n) = @_;
    $return_string = "";

    for my $i (1..$n){
        $new_line = <STDIN>;
        chomp $new_line;
        $return_string .= $new_line;
    }
    return $return_string;
}


print n_lines(2);
