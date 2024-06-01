%treatment_type = ("RCT" => 1500, "CROWN" => 3000, "IMPLANT" => 20000, "BRACES" => 5000);
#extract values
foreach $key(keys %treatment_type){
 printf "Key=%s \t Value=%d\n",$key, $treatment_type{$key};   
 

}

