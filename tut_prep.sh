#!/bin/bash

# Validate: have an arg and is a directory
if (test "$#" -ne 1) || !(test -d $1)
then
    echo "Usage: $0 DIR"
    exit 1
fi

dir=$1
new_dir=$(echo "$dir/"$(date "+%a%H")"_"$$)

if test -e "$new_dir"
then
    echo "$new_dir already exists"
    exit 1
fi

# if we don't have the new_dir, make it
mkdir "$new_dir"

# move files to dir
for file in "$dir"/*
do
    # we only want regular files (i.e. no sub-dirs)
    if test -f "$file"
    then
        mv "$file" "$new_dir/"
    fi
done


# cp files from base
# (if base doesn't exist we'll get an error)
cp "$dir"/base/* "$dir"
