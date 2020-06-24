#!/usr/bin/perl -w

# Write a simple version of the grep command, that takes a regular expression as its first command line argument and then prints all lines in the standard input (or named files) that contain this pattern.
# Examples of use:
# 
#   perl mygrep.pl 'a.*c' file1 file2 file3     # all lines containing a...c
#   ...
#   perl mygrep.pl '[0-9]+' file1 file2 file3   # all lines containing numbers
#   ...
#   perl mygrep.pl '^The' <file1          # all lines starting with "The"
#   ...


# Validate (check we have 1st arg)
# Loop through files
#   Loop through lines of file
#      Display line if regex match



if (@ARGV < 1) {
    die "Usage: $0 REGEX [file ...]\n";
}

$pat = shift @ARGV;


while ($line = <>){
    if ($line =~ /$pat/){
        print "$line";
    }
}
