use DateTime;
use DateTime::Format::Duration;

my $currenttime=DateTime->now;
$currenttime->set_time_zone('Asia/Kolkata');

print "Current Time=$currenttime\n";


#take dob
my $year;
my $month;
my $day;

print "Enter DOB Year";
chomp($year=int<STDIN>);

print "Enter DOB Month";
chomp($month=int<STDIN>);

print "Enter DOB Day";
chomp($day=int<STDIN>);


#convert it to dob

my $dob = DateTime->new(
 year => $year,
 month => $month,
 day => $day 
);
print "DOB = $dob\n"; 

#compute age

my $duration = $currenttime - $dob;
my $age = DateTime::Format::Duration->new(
        pattern => '%Y years, %m months, %e days, %H hours, %M minutes, %S seconds', normalise => 1
);
print  $age->format_duration($duration)."\n";


