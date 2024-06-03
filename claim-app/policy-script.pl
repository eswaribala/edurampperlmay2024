#!/usr/bin/perl -Tw
use strict;
use CGI ':standard';
use DBI;
use DBD::mysql;



my $firstname = param('firstName');
my $lastname = param('lastName');
my $contact_no = param('contactNo');
my $adharcard_no=param('adharCardNo');

# CONFIG VARIABLES
my $platform = "mysql";
my $database = "edupatientdb";
my $host = "172.17.0.2";
my $port = "3306";
my $tablename = "policy";
my $user = "root";
my $pw = "password";




#DATA SOURCE NAME
my $dsn = "dbi:mysql:$database:$host:$port";
my $DBIConnect = DBI->connect("DBI:mysql:$database:$host", "$user", "$pw");
my @records = ( [$firstname, $lastname,$contact_no,$adharcard_no] ) ;
my $query="insert into policy(first_name,last_name,contact_no,adharcard_no) values(?,?,?,?)";
my $sth = $DBIConnect->prepare($query);
#$sth->execute(map { @$_ } @$records);
foreach my $rec ( @records ) { 
    $sth->execute( @$rec );
}

sleep(10);

#=begin
print header,
    start_html(-title=>$firstname),
    h1("Welcome, $firstname"),
    h3 p('You have Submitted the following Data:'),
        h4 table(Tr(td('First Name:'),
            h4 td($firstname)),
            Tr(td('Last Name:'),
                h4 td($lastname)),
            Tr(td('Contact No:'),
                h4 td($contact_no)),
            Tr(td('Adhar Card No:'),
                h4 td($adharcard_no))
            ),
            end_html;
#=end
