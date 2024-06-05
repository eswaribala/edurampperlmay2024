use strict;
use warnings;
use JSON::MaybeXS qw(encode_json decode_json);
my $policies={'Premium'=>
            {
             'visits'=>10,
             'critical-diseases'=>[
               'cancer','tumor','ICU'
               ]              
              },
            'copay'=>
             {
              'visits'=>20,
              'critical-diseases'=>[
               'tumor','ICU'
               ] 

             },
            'medicare'=>
             {
               'medicine'=>50000
             },
            'dentalcare'=>{
               'implant'=> 200000,
               'braces'=> 25000

             }

};

my $json = JSON::MaybeXS->new(utf8 => 1, pretty => 1);
my $policies_json = $json->encode($policies);
print $policies_json;

