use strict;

my $count=int(rand(2)) +3 ;

print "$count\n";

my @names;
my $name;

for(my $i=0;$i<$count;$i++){

  print "Enter Name \t";   
 
   chomp($name=<STDIN>);
   $names[$i]=$name;
   
}

print "\n";

print "Names Before Sorting......\n";

print @names;

print "\n";
#print sorted names

my @sortednames;
@sortednames = sort(@names);

print "Names after Sorting....\n";

print @sortednames;
print "\n";
