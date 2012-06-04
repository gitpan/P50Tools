use P50Tools;

my $p = P50Tools::Packs->new();
$p->target('www.google.com.br');
$p->door(80);
$p->send;
