#!/usr/bin/perl -w
# Write a Perl function which takes an integer argument n and reads the next n lines of input and returns them as a string.

sub n_lines {
    my ($n) = @_;
    my $out_text = "";

    for my $x (1..$n){
        my $new_text = <STDIN>;
        #chomp $new_text;
        $out_text .= $new_text;
    }
    return $out_text;
}

print n_lines($ARGV[0]);
