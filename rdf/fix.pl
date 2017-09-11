undef $/;
open(FH,"Schulen.ttl") or die;
$_=<FH>;
close FH;

s/ / /gs;
#s/jso:ort " (.*)"/jso:ort "$1" /gs;
#s/jso:address\s*"(.*)"/processAddress($1)/eg;

print;

## end main ##

sub processAddress {
  local $_=shift;
  s/\s+$//g;
  m/^\s*(.*)\s+(\d\d\d\d\d)\s+(.*)\s*$/;
  my $strasse=$1;
  my $plz=$2;
  my $ort=$3;
  $ort=~s/(.*)\s+OT\s+(.*)/$1/;
  print "Strasse: /$strasse/, PLZ: /$plz/, Ort: /$ort/, OT: /$ot/\n";
}
