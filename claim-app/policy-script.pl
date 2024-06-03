#!/usr/bin/perl -Tw
use strict;
use CGI ':standard';

my $firstname = param('firstName');
my $lastname = param('lastName');
my $contact_no = param('contactNo');
my $adharcard_no=param('adharCardNo');

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
