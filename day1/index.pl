
#use DateTime;
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
#$currentdatetime=DateTime->now;
#print "Current Date Time=$currentdatetime\n"
print `ls -l`

