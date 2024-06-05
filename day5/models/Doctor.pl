package Doctor;
use strict;
use warnings;

sub new
{

 my $class=shift;

 my $self={
  _id=>shift,
  _name=>shift,
  _qualification=>shift,
  _dob=>shift

};

bless $self,$class;

return $self;


}
# Accessor method to get the id of the person
sub getId {
    my ($self) = @_;
    return $self->{_id};
}

# Mutator  method to set the id of the person
sub setId {
    my ($self, $id) = @_;
    $self->{_id} = $id if defined($id);
    
}
# Accessor method to get the name of the person
sub getName {
    my ($self) = @_;
    return $self->{_name};
}

# Mutator  method to set the name of the person
sub setName {
    my ($self, $name) = @_;
    $self->{_name} = $name if defined($name);
    
}
# Accessor method to get the qualification of the person
sub getQualification {
    my ($self) = @_;
    return $self->{_qualification};
}

# Mutator  method to set the first name of the person
sub setQualification {
    my ($self, $qualification) = @_;
    $self->{_qualification} = $qualification if defined($qualification);
    
}

# Accessor method to get the dob of the person
sub getDOB {
    my ($self) = @_;
    return $self->{_dob};
}

# Mutator  method to set the dob of the person
sub setDOB {
    my ($self, $dob) = @_;
    $self->{_dob} = $dob if defined($dob);
    
}


1;
