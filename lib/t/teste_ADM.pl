use P50Tools;

my $p = P50Tools::AdminFinder->new();
$p->target('www.itapursnga.net.br');
$p->scan;
