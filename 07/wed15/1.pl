#!/usr/bin/perl -w

# Write a Perl program word_frequency.pl which prints a count of all the words found in its input.
# Your program should ignore case.
# It should treat any sequence of alphabetic characters ([a-z]) as a word.
# It should treat any non-alphabetic character as a space.
# It should print words and their counts sorted in increasing order of frequency in the format shown in this example:


# Loop through each line of input
#   clean up line, lowercase, extract words
#   Loop through each word in line
#     if seen word before
#        add to that key's count
#     if haven't seen word
#        add key to hash
#        set value to 1
# Display hash



sub print_hash{
    my (%h) = @_;
    my @sorted_keys = sort {$a cmp $b} keys %h;
    for my $key (@sorted_keys){
        print "[$key] => $h{$key}\n"
    }

    return @sorted_keys+0;
}


while ($line = <>){
    # lowercase $line
    chomp $line;
    #$line =~ tr/[A-Z]/[a-z]/;
    $line = lc $line;


    for $word ($line =~ /[a-z]+/g){
        $words_seen{$word}++;
    }
}



# print in descending value order
@sorted_keys = sort {$words_seen{$b} <=> $words_seen{$a}} (keys %words_seen);
for $key (@sorted_keys){
    print "$words_seen{$key} $key\n"
}

# "NUM WORD"


