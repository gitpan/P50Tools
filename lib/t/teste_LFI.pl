use P50Tools;

my $p = P50Tools::LFIScan->new();
$p->target('www.itapursnga.net.br');
$p->scan;
