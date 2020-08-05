#!/bin/sh
# Write a shell script called rmall.sh that removes all of the files and directories below the directory supplied as its single command-line argument. The script should prompt the user with Delete X? before it starts deleting the contents of any directory X. If the user responds yes to the prompt, rmall should remove all of the plain files in the directory, and then check whether the contents of the subdirectories should be removed. The script should also check the validity of its command-line arguments.


# DOCS
# |
# SUB1    SUB2     z.h
# |        |
# a.c      b.c c.c


# Validation - check we have 1 arg, check $1 is a dir
# For everything directly undernaeath
#    if directory
#       prompt (ask) if happy to delete
#       rmall.sh directory if happy
#    otherwise (regular file)
#       rm it

if test "$#" -ne 1 || ! test -d "$1" 
then
    echo "Usage: $0 DIRECTORY"
    exit 1
fi

dirName="$1"

# TODO
for path in "$dirName"/*
do
    if test -d "$path"
    then
        # ask if happy to delete dir
        printf "Delete $path? "
        read confirm
        # rmall dir if happy
        if test "$confirm" = "yes"
        then
            ./rmall.sh "$path"
        fi
    else
        echo "rm $path"
        #rm -fq "$path"
    fi
done



