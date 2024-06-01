use strict;
my $key;

my %departments=('Prosthodontics'=>
            {
             'Vignesh'=>'Implant',
             'Murali'=>'Prostho' 
              },
            'Orthodontics'=>
             {
              'Subhiksha'=>'Braces',
              'Anita'=>'Invisible Braces' 
             },      
            'Paedology'=>
             {       
               'Venkat'=>'Infant Oral Medicine'    
             }     

);


#read data from nested hash

foreach $key(keys %departments){
 
   printf "Department=%s\t ", $key;

   foreach $_(keys %{$departments{$key}}){
        
         printf "Surgeon=%s \t Specialization=%s\n", $_, $departments{$key}->{$_};

    }
  
}
