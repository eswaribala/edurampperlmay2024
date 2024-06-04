use JSON;
use Data::Dumper;
my %policies=('Premium'=>
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

);

my $json = encode_json \%policies;

print Dumper($json);
