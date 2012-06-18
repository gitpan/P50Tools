
########Search Adm Page########
use P50Tools;

my $p = P50Tools::AdminFinder->new();
$p->target('my.target.lan');
# $p->string_list('MyStringList.txt'); this method can be used optionally if you had other list of strings
$p->scan;


########Search Local File Inclusion fail########
use P50Tools;

my $p = P50Tools::LFIScan->new();
$p->target('my.target.lan');
# $p->string_list('MyStringList.txt'); this method can be used optionally if you had other list of strings
$p->scan;

########Search Remote File Inclusion fail########
use P50Tools;

my $p = P50Tools::RFIScan->new();
$p->target('my.target.lan');
# $p->string_list('MyStringList.txt'); this method can be used optionally if you had other list of strings
# $p->php_shell('My.SiteWith.file/php_name.txt'); this method can be used optionally if you had other file with php shell code
# $p->response('response'); this method needs to be configured according to the php shell used
$p->scan;

########Search SQL injection fail########
use P50Tools;

my $p = P50Tools::SQLiScan->new();
$p->target_list('my_list_with_target.txt');
$p->output('my_results.txt');
$p->scan;

########Search open doors in a target########
use P50Tools;

my $p = P50Tools::RandonDoors->new();
$p->target('my.target.lan');
$p->ini(78); 
$p->end(82);
# To use defaults doors don't declare 'ini' and 'end' methods, will be search all doors
# $p->timeout(20); this method can be used optionally
$p->scan;

########Search open doors in a target########
use P50Tools;

my $p = P50Tools::Packs->new();
$p->target('my.target.lan');
$p->door(80);
$p->send;
