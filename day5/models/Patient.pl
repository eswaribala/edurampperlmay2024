package Patient;
use strict;
use warnings;
#inheritance
use  parent 'Person';
#create constructor
#my $self;
#my $class;
sub new
{

  my  $class=shift;
  my @side=@_;  
  my $self=$class->SUPER::new($side[0],$side[1],$side[2],$side[3]); 
   $self->{ _history}=$side[4];
   $self->{ _bloodgroup}=$side[5];

     

  bless $self,$class;
 
   return $self;

}


sub getHistory {
     my ($self) = @_;
    return $self->{_history};
}
sub setHistory {
    my ($self, $new_value) = @_;
    $self->{_history} = $new_value if defined $new_value;
    return $self;
}
sub getBloodGroup {
     my ($self) = @_;
    return $self->{_bloodgroup};
}
sub setBloodGroup {
    my ($self, $new_value) = @_;
    $self->{_bloodgroup} = $new_value if defined $new_value;
    return $self;
}

sub login {

    my (@data)=@_;

    print @data;

    if ($data[2] eq "Surgeon"){
        print "Sub class Identified as Doctor";
    }
    else
    {
        print "Sub class Identified as Patient";
    }

}

1;
