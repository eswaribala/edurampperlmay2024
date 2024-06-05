use strict;
use warnings;
package Doctor;

sub new
{
  our $class=shift;

  our $self= {
   
     'id'=>shift,
     'name'=>shift,
     'qualification'=>shift,
     'dob'=>shift,

   }

   bless $self,$class;
 
  return $self;


}

 $obj= new Doctor(2342,'Vignesh','MDS','1970-12-02');
print "$obj->{'name'}\n";
