use Error ':try';
use strict;
use warnings;
use JSON;
my $json_fh;
try{
my $filename=$ARGV[0] or die;
my $json_text= do{
  open($json_fh,"<:encoding(utf-8)", $filename)  or die "file not found";
         
#   local $/;
  <$json_fh>
 
};

my $json = JSON->new;
my $data = $json->decode($json_text);

for ( @{$data->{data}} ) {
   print $_->{name}."\n";
}

}catch Error::Simple with{

my $err= shift;

print "Error = $err";


}


print "Code Continues....\n";


