use strict;


my $glucoselevel='Ram->200->Anita->350->Mukesh->130';
my @glucosedata=split('->',$glucoselevel);
my $length= scalar @glucosedata;

printf "%\n",@glucosedata;

for(my $i=0;$i<$length;$i=$i+2){

   print "@glucosedata[$i]\t\n";

}

