package Patient;
use strict;
use warnings;
#inheritance
use  parent 'Person';
#create constructor

sub new
{

  my $class=shift;

  my $self={
     _history=>shift,
     _bloodgroup=>shift

  };   

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


1;
