#!/usr/bin/perl -w
# Write a Perl program, tags.pl which given the URL of a web page fetches it by running wget and prints the HTML tags it uses.
# The tag should be converted to lower case and printed in sorted order with a count of how often each is used.
# 
# Don't count closing tags.
# 
# Make sure you don't print tags within HTML comments.


# fetch the data
# for line in data
#    lower case line
#    remove comments
#    extract tags using regex
#    inc hash table
# display hash




$url = $ARGV[0] or die "Usage: $0 URL\n";
@lines = `wget --quiet -O- $url`;

for $line (@lines){
    chomp $line;
    $line =~ tr/A-Z/a-z/;
    # remove comments
    @tags = ($line =~ /<([a-z0-9]+)/g );
    for $t (@tags){
        $found{$t} ++;
    }
}

@sorted_keys = sort keys %found;
for $key (@sorted_keys){
    print "$key $found{$key}\n";
}
