#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
require Outside;

my $debug = 0;
my $outobj = Outside->new();

$outobj->out();
$outobj->pass("original\n");
print Dumper $outobj if $debug;

my $foo_obj = App::Foo->new(caller=>\$outobj);
my $bar_obj = App::Bar->new(caller=>\$outobj);

print "\n";
print "Foo stuff\n";
$foo_obj->getter();
$foo_obj->setter();
$foo_obj->cat();
$foo_obj->bat();
print "===========\n\n";

print "Bar stuff\n";
$bar_obj->getter();
$bar_obj->setter();
$bar_obj->can();
$bar_obj->ban();
print "===========\n\n";
