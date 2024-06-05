package Patient;
use strict;
use warnings;

#create constructor

sub new
{

  my $class=shift;

  my $self={
     _patientId=>shift,
     _name=>shift,
     _dob=>shift,
     _contactNo=>shift,
     _history=>shift,
     _bloodgroup=>shift

  };   

  bless $self,$class;
 
   return $self;

}

sub getPatientId {
     my ($self) = @_;
    return $self->{_patientId};
}
sub setPatientId {
    my ($self, $new_value) = @_;
    $self->{_patientId} = $new_value if defined $new_value;
    return $self;
}

sub getName {
     my ($self) = @_;
    return $self->{_name};
}
sub setName {
    my ($self, $new_value) = @_;
    $self->{_name} = $new_value if defined $new_value;
    return $self;
}

sub getDOB {
     my ($self) = @_;
    return $self->{_dob};
}
sub setDOB {
    my ($self, $new_value) = @_;
    $self->{_dob} = $new_value if defined $new_value;
    return $self;
}
sub getContactNo {
     my ($self) = @_;
    return $self->{_contactNo};
}
sub setContactNo {
    my ($self, $new_value) = @_;
    $self->{_contactNo} = $new_value if defined $new_value;
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
