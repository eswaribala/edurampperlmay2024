require '../models/Doctor.pl';
require '../models/Patient.pl';
#require '../models/Appointment.pl';
use DateTime;


my $obj= new Doctor(23435,'viki','1995-12-07',5056010299,'MDS','Prosthodontics');

#retrieve all
print $obj->getPersonId() ."\n";
print $obj->getName() ."\n";
print $obj->getDOB() ."\n";
print $obj->getContactNo() ."\n";

print $obj->getQualification() ."\n";
print $obj->getSpecialization() ."\n";

$obj->login(22648764,'1995-12-02','Surgeon');


#setter

#change qualification

$obj->setQualification('PhD');

print $obj->getQualification() ."\n";

#create patient object

my $patientObj= new Patient(1,'Param','1970-12-02', 9952032862, '', 'O+');
print $patientObj->getPersonId() ."\n";
print $patientObj->getName() ."\n";
print $patientObj->getDOB() ."\n";
print $patientObj->getContactNo() ."\n";
print $patientObj->getHistory() ."\n";
print $patientObj->getBloodGroup() ."\n";
$patientObj->login(43956943,'1970-12-02','Surgeon');

=begin
#create appointment object
#default constructor
#my $appointmentObj=Appointment->new
#$appointmentObj->setAppointmentId(int(rand(10000)));
my $appdate = DateTime->new(
 year => 2024,
 month => 6,
 day => 15 , 
  hour => 16,
    minute     => 12,
    second     => 47,
    nanosecond => 500000000,
    time_zone  => 'Asia/Kolkata',
);
#print "DOB = $dob\n"; 
#$appointmentObj->setDate($appdate->year ."/". $appdate->month ."/" . $appdate->day);

#$appointmentObj->setTime($appdate->hour .":". $appdate->minute  .":" . $appdate->second);

#named parameters
$date=$appdate->year ."/". $appdate->month ."/" . $appdate->day;
$time=$appdate->hour .":". $appdate->minute  .":" . $appdate->second;

my $appointmentObj=Appointment->new({
appointmenId=>int(rand(10000)), date=>$date,time=>$time
});

print $appointmentObj->getAppointmentId() ."\n";
print $appointmentObj->getDate() ."\n";
print $appointmentObj->getTime() ."\n";

#isa and can

print $appointmentObj->isa('Appointment') ."\n";
print $appointmentObj->can('getDate') ."\n";
=cut
