use P50Tools;

my $p = P50Tools::RandonDoors->new();
$p->target('my.target.lan');
$p->ini(78);
$p->end(82);
$p->timeout(20);
$p->scan;
