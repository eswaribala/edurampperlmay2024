use strict;

# Using Text::CSV file to allow
# full CSV Reader and Writer
use Text::CSV;

use DBI;
use DBD::mysql

# HTTP HEADER
#print "Content-type: text/html \n\n";

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


my $csv = Text::CSV->new({ sep_char => ', ' });

my $file_to_be_read = $ARGV[0] or die;
my $DBIConnect = DBI->connect("DBI:mysql:$database:$host", "$user", "$pw");
my $query="insert into policy(first_name,last_name,contact_no,adharcard_no) values(?,?,?,?)";

my $sth = $DBIConnect->prepare($query);
my @rec;
# Reading the file
open(my $data_file, '<', $file_to_be_read) or die;
while (my $line = <$data_file>)
{
    chomp $line;
    # Parsing the line
    if ($csv->parse($line))
    {
        # Extracting elements
        my @words = $csv->fields();
     for (my $i = 0; $i <= 3; $i++)
        {
            print "$words[$i] ";
            push(@rec,$words[$i]);
        }

     $sth->execute($words[0],$words[1],int($words[2]),int($words[3]));
        print "\n";
    }
    else
    {
        # Warning to be displayed
        warn "Line could not be parsed: $line\n";
    }
}


print @rec;
