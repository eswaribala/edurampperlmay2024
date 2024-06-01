use DateTime;
use strict;
use DateTime::Format::Duration;
#Health care home page
#Parameswari Bala
#31-May-2024
#version 1.0.0
#multi line comment
=begin comment
print "rocking with perl\n";
=cut
print "Training started\n";
print "Go beyond\n";
#print patient information

#declare variables
my $first_name; #file scope
my $last_name;
my $salary;
my $converted_amount;
my $current_time;
my $year;
my $month;
my $day;
my $currentdatetime;
my $dob;
#scalar type
print "Enter Your First Name";
chomp($first_name=<STDIN>);
print "Enter Your Last Name";
chomp($last_name=<STDIN>);
print "Enter your Salary";
chomp($salary=<STDIN>); #long number
$converted_amount=int($salary);
$current_time=localtime();
print "First Name=$first_name \t Last_name=$last_name\n";
$converted_amount = $converted_amount + 500; 
printf "FirstName=%s \t Salary=%d \t Current Time=%s\n",$first_name,$converted_amount,$current_time;
$currentdatetime=DateTime->now;
$currentdatetime->set_time_zone('Asia/Kolkata');
 
print "Current Date Time= $currentdatetime \n";
print `ls -l`;
print "Enter DOB  year";
chomp($year=int<STDIN>);
print "Enter Month";
chomp($month=int<STDIN>);
print "Enter Day";
chomp($day=int<STDIN>);


$dob = DateTime->new (

day => $day,
month => $month,
year => $year

);

print "DOB = $dob\n"; 



my $duration = $currentdatetime - $dob;
my $dfd = DateTime::Format::Duration->new(
        pattern => '%Y years, %m months, %e days, %H hours, %M minutes, %S seconds', normalise => 1
);
print  $dfd->format_duration($duration);




#symbolic reference
my $patient_id;
my $case_id;
$patient_id = 1001;
$case_id = \$patient_id;
$$case_id=1050;
print "Case Id = $patient_id";
print "Case Id = $$case_id";

#sprintf
my $formatted_medicine;

$formatted_medicine=sprintf("The medicine %s to be given %9.2f","Dola",678900);
print "$formatted_medicine";
