use strict;

my @medicine_types;
my $bill_amount;
my $medicine_cost;
my $selected_medicine;
my $length;

#array 
@medicine_types=("imported","local");
$length= scalar @medicine_types;
printf "Length=%d",$length;
$medicine_cost=int(rand(500))+500;
$selected_medicine=rand($length);
printf "Selected Medicine=%d\t",$selected_medicine;

if($selected_medicine == 0){

   $bill_amount = $medicine_cost + ($medicine_cost * .30);
}
else{
   $bill_amount = $medicine_cost + ($medicine_cost * .10);

}


printf "Medicine Cost=%6.2f \t BillAmount=%6.2f\n",$medicine_cost,$bill_amount;

