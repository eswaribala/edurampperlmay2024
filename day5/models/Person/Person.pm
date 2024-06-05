package Person;
use strict;
use warnings;

#create constructor

sub new
{

  my $class=shift;

  my $self={
     _personId=>shift,
     _name=>shift,
     _dob=>shift,
     _contactNo=>shift,
    
  };   

  bless $self,$class;
 
   return $self;

}

sub getPersonId {
     my ($self) = @_;
    return $self->{_personId};
}
sub setPersonId {
    my ($self, $new_value) = @_;
    $self->{_personId} = $new_value if defined $new_value;
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

sub login {
 
  my (@data)=@_;

  print @data;
  
  if ($data[2] eq "Surgeon"){
      print "Identified as Doctor";
}
  else
       {
     print "Identified as Patient";
} 

}


1;
