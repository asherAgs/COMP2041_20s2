#!/usr/bin/perl -w
# Write a Perl program, tags.pl which given the URL of a web page fetches it by running wget and prints the HTML tags it uses.
# The tag should be converted to lower case and printed in sorted order with a count of how often each is used.
# 
# Don't count closing tags.
# 
# Make sure you don't print tags within HTML comments.

# PLAN
# Get page using wget, check successful
# For each line in the page
#   Lowercase
#   Remove comments
#   Regex for "<TAG"
#   Add tag to count hash
# Display hash in alpha order


$url = $ARGV[0] or die "Usage: $0 URL\n";

@lines = `wget --quiet -O- "$url"`;
for $line (@lines){
    $line =~ tr/A-Z/a-z/;
    $line =~ s/<!--.*-->//g; # remove comments
    @found = ($line =~ /< *([a-z]+)/g);
    for $t (@found){
        $tags{$t}++;
    }
}


@sorted_keys = sort keys %tags;
for $key (@sorted_keys){
    print "$key $tags{$key}\n";
}
