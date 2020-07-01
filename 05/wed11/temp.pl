#!/usr/bin/perl -w

open F, ">", "temp_file123.txt";

@lines = ("a","b","c");
<F> = @lines;


close F;
