use strict;
my %treatment_type;
my $count;
my $treatment_name;
my $treatment_cost;
my $key;
#%treatment_type = ("RCT" => 1500, "CROWN" => 3000, "IMPLANT" => 20000, "BRACES" => 5000);

print "Enter total treatment types";
chomp($count=int<STDIN>);

for (my $i=0;$i<$count;$i++){
  
   print "Enter the Treatment Name";
   chomp($treatment_name=<STDIN>);
   print "Enter the Treatment Cost";
   chomp($treatment_cost=int<STDIN>);
   $treatment_type{$treatment_name}=$treatment_cost;



}


#extract values
foreach $key(keys %treatment_type){
 printf "Key=%s \t Value=%d\n",$key, $treatment_type{$key};   
 

}
