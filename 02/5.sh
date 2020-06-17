#!/bin/sh

# Write a shell script, list_include_files.sh, which for all the C source files (.c files) in the current directory prints the names of the files they include (.h files), for example
# list_include_files.sh
# count_words.c includes:
#     stdio.h
#     stdlib.h
#     ctype.h
#     time.h
#     get_word.h
#     map.h
# get_word.c includes:
#     stdio.h
#     stdlib.h
# map.c includes:
#     get_word.h
#     stdio.h
#     stdlib.h
#     map.h


# Find all the C files
# For each file
#    print the file
#    find all the h files
#    display them


for file in "*.c"
do

done


