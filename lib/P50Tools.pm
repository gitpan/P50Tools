package P50Tools;

# ABSTRACT: This tool is just to work with pen-test, but to study to. 

use common::sense;
use lib 'P50Tools';
use lib 'Strings';
use P50Tools::SQLiScan;
use P50Tools::RFIScan;
use P50Tools::RandoDoors;
use P50Tools::LFIScan;
use P50Tools::AdminFinder;


if ($^O !~ m/MSW/gi) {require P50Tools::Packs};


1;



