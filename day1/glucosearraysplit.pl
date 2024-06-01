use strict;

#split operation
my $glucoselevel='Ram->200->Anita->350->Mukesh->130';
my @glucosedata=split('->',$glucoselevel);
my $length= scalar @glucosedata;

printf "%\n",@glucosedata;

for(my $i=0;$i<$length;$i=$i+2){

   print "@glucosedata[$i]\t\n";

}


#joinoperation
my $glucose_scalar_data=join(',',@glucosedata);
printf "Joined Data=%s\n",$glucose_scalar_data;  
