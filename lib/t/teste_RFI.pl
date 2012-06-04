use P50Tools;

my $p = P50Tools::RFIScan->new();
$p->target('www.itapursnga.net.br');
$p->scan;
