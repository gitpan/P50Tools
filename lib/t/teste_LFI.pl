use P50Tools;

my $p = P50Tools::LFIScan->new();
$p->target('my.target.lan');
$p->scan;
