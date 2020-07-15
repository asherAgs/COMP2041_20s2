#!/usr/bin/perl -w

# Write a Perl function print_hash() that displays the contents of a Perl associative array (hash) in the format below (its the format used by the PHP function print_r() e.g. the hash table ...
# %colours = ("John" => "blue", "Anne" => "red", "Andrew" => "green");
# and the function call ...
# print_hash(%colours);
# should produce the output ...
# [Andrew] => green
# [Anne] => red
# [John] => blue
# Since the function achieves its effect via print, it doesn't really need to return any value, but since Perl functions typically return something, print_hash should return a count of the number of items displayed (i.e. the number of keys in the hash table). Note that the hash should be displayed in ascending alphabetical order on key values.



# Loop through sorted keys
#  print key, value
# Return num keys



sub print_hash {
    my (%h) = @_;
    my @sorted_keys = sort (keys %h);
    for $key (@sorted_keys){
        print "[$key] => $h{$key}\n"
    }

    return @sorted_keys+0;
}

%colours = ("John" => "blue", "Anne" => "red", "Andrew" => "green");
$num = print_hash(%colours);
print "$num\n";
