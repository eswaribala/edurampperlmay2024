use strict;
use warnings;

my ($ipaddress, $port) = @ARGV;

my $number_args=$#ARGV + 1;

if($number_args == 2){
 
 printf "IP Address=%s \t Port=%s\n",$ipaddress,$port;
 }
else{

  print "No arguments found\n";
}
