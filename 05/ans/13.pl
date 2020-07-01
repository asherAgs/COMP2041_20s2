#!/usr/bin.perl -w
# Write a Perl program which given the name of a C function searches the C source files (*.c) in the current directory for calls of the function, declarations & definitons of the function and prints a summary indicating the file and line number, in the format below.

# You can assume functions are defined with the type, name and paramaters on a single non-indented line. You can assume function bodies are always indented.

# You don't have to handle multi line comments. Try to avoid matching the function name in strings or single line comments. For example:



# cat half.c
# double half(double x) {
#     return  x/2;
# }
# cat main.c
# #include <stdio.h>
# #include <stdlib.h>
# 
# double half(double x);
# 
# int main(int argc, char *argv[]) {
#     return  half(atoi(argv[1]));
# }
# ./print_function_uses.pl half
# a.c:1 function half defined
# half.c:1 function half defined
# main.c:4 function half declared
# main.c:7 function half used

# Validation: Check we have ARGV[0]
# Loop through c files:
#   Loop through lines of each file:
#     If match regex for define, declare or use
#      display message accordingly

# Validate
$func_name = $ARGV[0] or die "Usage: $0 <function_name>\n";

# Set up regex
$wo = "[A-Za-z]";
$dec_reg = "^ *$wo+ $func_name\\(.*\\) *{";
$def_reg = "^ *$wo+ $func_name\\(.*\\) *;";
$use_reg = "$func_name\\(.*\\)";

for $file (glob "*.c"){
    open F, "<", $file or die "$0: Could not open $file: $!\n";

    @lines = <F>;
    
    $line_count = 0;
    for $line (@lines){
        $line_count ++;
        if ($line =~ /$dec_reg/){
            print "$file:$line_count function $func_name declared\n";
        } elsif ($line =~ /$def_reg/) {
            print "$file:$line_count function $func_name defined\n";
        } elsif ($line =~ /$use_reg/){
            print "$file:$line_count function $func_name used\n";
        }
    }
}
