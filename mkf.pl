use inc::Module::Install;
 
name    'P50Tools';
all_from  'lib/P50Tools.pm';

abstract 'This distribution compose a tools to work with pen-test, but just to study';
author 'Aureliano Guedes <acpguedes@cpan.org>';
version '0.7';
license 'perl';
perl_version '5.006';

requires 'LWP::UserAgent' => 0;
requires 'HTTP::Request' => 0;
requires 'Net::RawIP' => 0;
requires 'Moose' => 0;
requires 'common::sense' => 0;

recommends 'LWP::Simple' => 0;
 
WriteAll;
