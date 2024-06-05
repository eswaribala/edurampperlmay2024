package Appointment;
use strict;
use warnings;
my $self;

#default constructor
=begin
sub new{

my ($class,%args)=@_;

my $self = \%args;

bless $self,$class;

return $self;


}
=cut

#named parameters
sub new{

my ($class,$args)=@_;

 $self = bless { _appointmentId=>$args->{appointmentId},
                   _date=>$args->{date},
                   _time=>$args->{time}}, $class;

return $self;


}


sub getAppointmentId
{
   my ($self)=@_;
   return $self->{_appointmentId};

}

sub setAppointmentId
{

  my ($self,$new_value)=@_;

  $self->{_appointmentId}=$new_value if defined $new_value;   
  
  return $self;

}

sub getDate
{
   my ($self)=@_;
   return $self->{_date};

}

sub setDate
{

  my ($self,$new_value)=@_;

  $self->{_date}=$new_value if defined $new_value;   
  
  return $self;

}

sub getTime
{
   my ($self)=@_;
   return $self->{_time};

}

sub setTime
{

  my ($self,$new_value)=@_;

  $self->{_time}=$new_value if defined $new_value;   
  
  return $self;

}

sub DESTROY
{

  $self=shift;

  print "The current object is destroyed...." ;
}



1;
