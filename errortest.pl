use Error ':try'; 
  
try{ 
   open (FILE, "test11.txt") or die "File Not Found"; 
  #sleep(10);
   close FILE; 
} catch Error::Simple with { 
     my $err = shift; 
     print "ERROR: $err"; 
}; 

print "Good to continue\n";