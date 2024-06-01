use strict;
#array slicing

my @bloodgroups=qw/O O+ O- A A+ A- B B+ B- AB+ /;

my @groupo = @bloodgroups[0..2];
my @groupa = @bloodgroups[3..5];
my @groupb = @bloodgroups[6..8];
my @groupab = @bloodgroups[9];

#$_ special variable

foreach(@groupo){
 print "$_\t";
}

print "\n";

my $group;
foreach $group(@groupa){
 print "$group \t";
}
print "\n";

foreach(@groupb){
 print "$_\t";
}

print "\n";
printf "AB Group=%s\n",@groupab;
