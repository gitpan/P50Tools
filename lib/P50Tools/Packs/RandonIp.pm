package P50Tools::Packs::RandonIp;

use common::sense;

#create random ip
sub new {
	my $ip = join (".", map int rand (256), 1..4);
	return $ip; 
}

1;
