#!/usr/bin/perl -w
# Write a Perl program, tags.pl which given the URL of a web page fetches it by running wget and prints the HTML tags it uses.
# The tag should be converted to lower case and printed in sorted order with a count of how often each is used.
# 
# Don't count closing tags.
# 
# Make sure you don't print tags within HTML comments.


# Get the url
# Get the webpage
# Loop over each line
#   Convert to lowercase
#   Remove comments
#   Get the tag name (regex)
#   Add to hash count
# Display the hash in alpha order



$url = $ARGV[0] or die "Usage: $0 URL\n";

@output = `wget --quiet -O- "$url"`;
for $line (@output){
    chomp $line;
    $line =~ tr/A-Z/a-z/;
    $line =~ s/<!--.*-->//g;
    @tags = ($line =~ /<([a-z]+)/g );
    for $t (@tags){
        $found{$t}++;
    }
}


@sorted_keys = sort keys %found;
for $key (@sorted_keys){
    print "$key $found{$key}\n";
}
