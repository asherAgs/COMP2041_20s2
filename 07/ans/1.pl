#!/usr/bin/perl -w

# Write a Perl program word_frequency.pl which prints a count of all the words found in its input.
# Your program should ignore case.
# It should treat any sequence of alphabetic characters ([a-z]) as a word.
# It should treat any non-alphabetic character as a space.
# It should print words and their counts sorted in increasing order of frequency in the format shown in this example:

# For each line in input:
#   Extract words from line
#   Add each word to a hash with key being word and value the count
# Sort hash by values, ascending

while ($line = <>){
    chomp $line;
    $line =~ tr/A-Z/a-z/;
    for $word ($line =~ /[a-z]+/g){
        $seen{$word}++;
    }
}

# sort hash
@words = sort {$seen{$a} <=> $seen{$b}} (keys %seen);
for $word (@words){
    print "$seen{$word} $word\n";
}

