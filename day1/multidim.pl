use strict;
my @customer;
my $rows;
my $cols;
my $amount;

print "Enter no of customers";
chomp($rows=int<STDIN>);

for (my $i=0;$i<$rows;$i++){
 
   print "Enter no of EMI's";
   chomp($cols=int<STDIN>);
   printf "No of EMI's=%d",$cols;
  for(my $j=0;$j<$cols;$j++){
      chomp($amount=int<STDIN>);
      $customer[$i][$j]=$amount;
    }


}


#print two dimensional array


for (my $i=0;$i<$rows;$i++){
 
   
  for(my $j=0;$j<$cols;$j++){
   
      printf "%d\t", $customer[$i][$j];
    }

    print "\n";
}
