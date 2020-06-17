#!/bin/sh

# The course code for COMP2041 has been changed to COMP2042 and the course code for COMP9044 has been changed to COMP9042. Write a shell script, update_course_code.sh which appropriately changes the course_code in all the files it is given as arguments.


# For each file
# Validate - files exist
# convert instance of COMPP2041 -> COMP2042
# convert instance of COMP9044 -> COMP9042

for file in "$@"
do
    if ! test -e "$file"
    then
        echo "$file does not exist"
        exit 1
    fi

    # TODO create tmp_file
    tmp_file="$file.tmp.$$"

    sed 's/COMP2041/COMP2042/g;s/COMP9044/COMP9042/g' "$file" > "$tmp_file" &&
    mv "$tmp_file" "$file"
done

