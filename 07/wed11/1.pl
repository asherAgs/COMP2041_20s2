#!/usr/bin/perl -w

# Write a Perl program word_frequency.pl which prints a count of all the words found in its input.
# Your program should ignore case.
# It should treat any sequence of alphabetic characters ([a-z]) as a word.
# It should treat any non-alphabetic character as a space.
# It should print words and their counts sorted in increasing order of frequency in the format shown in this example:



# Loop through each line of input
#   Split line into words
#   For each word
#     if we've seen it
#        inc. count of key in hash
#     if we haven't
#        put in hash with val=1
# display hash

sub print_hash {
    my (%h) = @_;
    my @sorted_keys = sort (keys %h);
    for $key (@sorted_keys){
        print "[$key] => $h{$key}\n"
    }

    return @sorted_keys+0;
}

while ($line = <>){
    chomp $line;
    $line =~ tr/[A-Z]/[a-z]/;
    
    @words = split /[^A-Za-z]+/, $line;
    for $word (@words){
       $seen{$word}++;
    }
}


print_hash(%seen);


