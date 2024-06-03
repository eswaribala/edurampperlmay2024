use DBI;
use DBD::mysql

# HTTP HEADER
#print "Content-type: text/html \n\n";

# CONFIG VARIABLES
$platform = "mysql";
$database = "edupatientdb";
$host = "172.17.0.2";
$port = "3306";
$tablename = "patient";
$user = "root";
$pw = "password";

#DATA SOURCE NAME
$dsn = "dbi:mysql:$database:$host:$port";

# PERL DBI CONNECT
#$DBIconnect = DBI->connect($dsn, $user, $pw);
# my $DBIConnect = DBI->connect($dsn, $user, $pw, { RaiseError => 1 })
 #   or die $DBI::errstr;
my $DBIConnect = DBI->connect("DBI:mysql:$database:$host", "$user", "$pw");
$sth = $DBIConnect->prepare("select * from patient");
$sth->execute();
while ( @row = $sth->fetchrow_array )
{
	print "@row\n";
}
sleep(10);