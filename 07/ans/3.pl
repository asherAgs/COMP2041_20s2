#!/usr/bin/perl -w

# A citizen science project monitoring whale populations has files containing large numbers of whale observations. Each line in these files contains:
#   the date the observation was made
#   the number of whales in the pod ("pod" is the collective number for a group of whales)
#   the species of whale

# Write a Perl program ./merge_whales.pl which reads a file of whale observations and prints them to its standard output, merging adjacent counts from the same day of the same species. For example:

# ASSUMPTION: file is in date order
# Validation - check we have a file arg
# For each line in file:
#   Split by / +/ into (date, count, species)
#   Display hash then reintialise for each new date
#   Add to hash with key=(species) value=(count)


# Validation
$file = shift @ARGV or die "Usage: $0 <observations_file>\n";

open FH, "<", $file or die "Cannot open $file: $!\n";

$curr_date = "";
%curr = ();

for $line (<FH>){
    chomp $line;
    ($date, $count, $spec) = split / +/, $line, 3;

    if ($curr_date eq ""){
        $curr_date = $date;
    }
    elsif ($curr_date ne $date) { 
        # print & reset
        for $k (keys %curr){
            print "$curr_date $curr{$k} $k\n";
        }
        %curr = ();
        $curr_date = $date;
    }

    $curr{$spec} +=$count;
}

for $k (keys %curr){
    print "$curr_date $curr{$k} $k\n";
}
 


