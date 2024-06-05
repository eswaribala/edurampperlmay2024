package OTP;

use strict;
use warnings;

sub generate
{

my $max=$_[0];
my $min=$_[1];

my $gen_otp=int(rand($max))+$min;

print $gen_otp ."\n";

}

1;

