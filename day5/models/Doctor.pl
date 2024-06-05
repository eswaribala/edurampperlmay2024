package Doctor;
use strict;
use warnings;
use parent 'Person';
sub new
{

 my $class=shift;
 my @side=@_;
 my $self=$class->SUPER::new($side[0],$side[1],$side[2],$side[3]);

 $self->{_qualification}=$side[4];
 
 $self->{_specialization}=$side[5];



bless $self,$class;

return $self;


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
sub getSpecialization {
    my ($self) = @_;
    return $self->{_specialization};
}

# Mutator  method to set the dob of the person
sub setSpecialization {
    my ($self, $specialization) = @_;
    $self->{_specialization} = $specialization if defined($specialization);
    
}


1;
