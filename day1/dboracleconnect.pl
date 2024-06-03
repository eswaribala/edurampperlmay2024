use DBI;
#use DBD::mysql

# HTTP HEADER
#print "Content-type: text/html \n\n";

# CONFIG VARIABLES
$platform = "oracle";
$database = "xe";
$host = "172.17.0.2";
$port = "1521";
$tablename = "patient";
$user = "system";
$pw = "password";

#DATA SOURCE NAME
#$dsn = "dbi:mysql:$database:$host:$port";

# PERL DBI CONNECT
#$DBIconnect = DBI->connect($dsn, $user, $pw);
# my $DBIConnect = DBI->connect($dsn, $user, $pw, { RaiseError => 1 })
 #   or die $DBI::errstr;
my $DBIConnect =  DBI->connect('dbi:Oracle:XE','system','password');
$sth = $DBIConnect->prepare("select * from patient");
$sth->execute();
while ( @row = $sth->fetchrow_array )
{
	print "@row\n";
}
sleep(10);
