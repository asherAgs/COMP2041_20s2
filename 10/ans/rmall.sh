#!/bin/sh
# Write a shell script called rmall.sh that removes all of the files and directories below the directory supplied as its single command-line argument. The script should prompt the user with Delete X? before it starts deleting the contents of any directory X. If the user responds yes to the prompt, rmall should remove all of the plain files in the directory, and then check whether the contents of the subdirectories should be removed. The script should also check the validity of its command-line arguments.

# Validation - check 1 arg, check $1 is a dir
# For each item in directory:
#   If directory
#       Ask "Delete X?"
#       rmall that directory if yes
#   Otherwise
#       rm file


if test "$#" -ne 1 || ! test -d "$1"
then
    echo "Usage: $0 DIRECTORY_NAME"
    exit 1
fi
dirName=$1

for path in "$dirName"/*
do
    if test -d "$path"
    then
        # confirm "Delete $file?"
        printf "Delete \"$path\"? "
        read confirm
        if test "$confirm" = "yes"
        then
            # recurse on directories
            ./rmall.sh "$path"
        fi
    else
        # rm other files
        echo "rm-ing $path"
    fi
done
