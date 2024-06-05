use strict;
use warnings;

use lib qw(..);
use Data::Dumper;
use JSON qw( );

my $filename = $ARGV[0];

my $json_text = do {
   open(my $json_fh, "<:encoding(UTF-8)", $filename)
      or die("Can't open \"$filename\": $!\n");
   local $/;
   <$json_fh>
};

my $json = JSON->new;
my $data = $json->decode($json_text);

#print Dumper($data);

foreach my $key( @$data){
 
    print "$key->{id} \t $key->{name} \t $key->{email}\n";
  
 
}

