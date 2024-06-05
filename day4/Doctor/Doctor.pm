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

   };

   bless $self,$class;
 
  return $self;


}

1;
