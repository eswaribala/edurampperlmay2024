use DBI;
 2 use DBD::Pg
 3
 4 # HTTP HEADER
 5 print "Content-type: text/html \n\n";
 6
 7 # CONFIG VARIABLES
 8 $platform = "postgresql";
 9 $database = "testdb";
10 $host = "127.0.0.1";
11 $port = "5433";
12 $tablename = "customer";
13 $user = "postgres";
14 $pw = "postgres";
15 my $dsn = "DBI:Pg:dbname = $database;host = $host;port =$port";
16 #DATA SOURCE NAME
17 #my $dsn = "dbi:Pg:$database:$host:$port";
18
19 # PERL DBI CONNECT
20 #$DBIconnect = DBI->connect($dsn, $user, $pw);
21 #$DBIConnect=DBI->connect("dbi:Pg:dbname=$database;host=$host;port=$port", $user, $password);
22 my $DBIConnect = DBI->connect($dsn, $user, $pw, { RaiseError => 1 })
23    or die $DBI::errstr;
24
25 print "Opened database successfully\n";
26
27 print "DB Connected...";
28
29 $sth = $DBIConnect->prepare("select * from customer");
30 $sth->execute();
31 while ( @row = $sth->fetchrow_array )
32 {
33         print "@row\n";
34 }
35 sleep(10);
