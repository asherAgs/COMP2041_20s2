#!/usr/bin/perl -w

# A citizen science project monitoring whale populations has files containing large numbers of whale observations. Each line in these files contains:
#   the date the observation was made
#   the number of whales in the pod ("pod" is the collective number for a group of whales)
#   the species of whale

# Write a Perl program ./merge_whales.pl which reads a file of whale observations and prints them to its standard output, merging adjacent counts from the same day of the same species. For example:

$filename = $ARGV[0] or die "usage: $0 FILE\n";
open F, "<", $filename or die "Could not open file: $!\n";
@lines = <F>;

for $line (@lines){
    chomp $line;
    ($date, $count, $species) = split / +/, $line, 3;
    $obs{"$date|$species"} += $count;
}


@sorted_keys = sort keys %obs;
for $key (@sorted_keys){
    ($date, $species) = split /\|/, $key, 2;
    print "$date $obs{$key} $species\n";
}


