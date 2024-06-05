package Tax;
use experimental "switch";
use strict;
use warnings;
use feature qw(switch say);

our $billamount;
our $calculated_tax;

sub BEGIN {
  print "Startss...\n";

}

sub calculate_tax
{

$billamount = $_[0];
my $category = $_[1];

given($category){

when('general'){

$calculated_tax = $billamount * 0.15;
}

when('armedforces'){

$calculated_tax = $billamount * 0.15 - 0.10;
}


when('seniorcitizen'){

$calculated_tax = $billamount * 0.15 - 0.25;
}

default
{
$calculated_tax = $billamount * 0.25;

}


}

print $Tax::calculated_tax ."\n";

}

sub END
{
 
 print "Ends...\n";

}

1;
