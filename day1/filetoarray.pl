use strict;
use warnings;

our @doctors;

open(INFO,'./testdata.txt') or die ("Sorry! couldn't open file");

#file contents to array

@doctors=<INFO>;

close(INFO);

#print @doctors;
