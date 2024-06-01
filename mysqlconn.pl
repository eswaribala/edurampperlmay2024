use DBI;
use DBD::Pg

# HTTP HEADER
print "Content-type: text/html \n\n";

 # CONFIG VARIABLES
 $platform = "postgresql";
 $database = "testdb";
 $host = "127.0.0.1";
 $port = "5433";
 $tablename = "customer";
 $user = "postgres";
 $pw = "postgres";
 my $dsn = "DBI:Pg:dbname = $database;host = $host;port =$port";
 #DATA SOURCE NAME
 #my $dsn = "dbi:Pg:$database:$host:$port";

 # PERL DBI CONNECT
 #$DBIconnect = DBI->connect($dsn, $user, $pw);
 #$DBIConnect=DBI->connect("dbi:Pg:dbname=$database;host=$host;port=$port", $user, $password);
 my $DBIConnect = DBI->connect($dsn, $user, $pw, { RaiseError => 1 })
    or die $DBI::errstr;

 print "Opened database successfully\n";

 print "DB Connected...";

 $sth = $DBIConnect->prepare("select * from customer");
 $sth->execute();
 while ( @row = $sth->fetchrow_array )
 {
         print "@row\n";
 }
 sleep(10);
