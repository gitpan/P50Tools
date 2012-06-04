#!/usr/bin/env perl

use inc::Module::Install;
all_from('lib/P50Tools.pm');
requires('common::sense' => 0);
requires('Net::RawIP' => 0);
requires('Moose' => 0);
requires('HTTP::Request' => 0);
requires('LWP::UserAgent' => 0);
auto_manifest;
extra_tests;
WriteAll;
