#!/bin/sh
# Write a shell script called rmall.sh that removes all of the files and directories below the directory supplied as its single command-line argument. The script should prompt the user with Delete X? before it starts deleting the contents of any directory X. If the user responds yes to the prompt, rmall should remove all of the plain files in the directory, and then check whether the contents of the subdirectories should be removed. The script should also check the validity of its command-line arguments.

# Validation - check for 1 arg only, check it's a dir
# Loop through everything in dir
#    If it's a dir 
#       Ask "Delete X?"
#       rmall dir if yes to question
#    Otherwise (it's a file)
#        rm it


if test "$#" -ne 1 || ! test -d "$1" 
then
    echo "Usage: $0 DIRECTORY"
    exit 1
fi

dirName="$1"

for path in "$dirName"/*
do
    if test -d "$path"
    then
        # ask
        printf "Delete $path? "
        read confirm

        if test "$confirm" = "yes"
        then
            # recursively remove if yes
            ./rmall.sh "$path"
        fi

    else
        echo "rm $path"
        #rm "$path"
    fi
done
