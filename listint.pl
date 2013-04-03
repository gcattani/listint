#!/usr/bin/perl

# ListInt - generate lists of integers
#
# (c) 2013 Giovanni Cattani
# github.com/gcattani/listint
#
# Released under The MIT License

use strict;
use warnings;
use Getopt::Long;

# print_int($i, $prefix, $suffix, $even, $odd);
sub print_int {
	
									# print $prefix, $i, $suffix
	if 	  ($_[3]  && !($_[0] % 2))	{ print $_[1],$_[0],$_[2],"\n"; } # if even
	elsif ($_[4]  &&  ($_[0] % 2))	{ print $_[1],$_[0],$_[2],"\n"; } # if odd
	elsif (!$_[3] && !$_[4])		{ print $_[1],$_[0],$_[2],"\n"; }
			
}

sub help() {
	print "\nListInt\nUsage: perl intgen.pl {FROM} {TO} [OPTIONS]\nOPTIONS\n    -e, -even : print only even numbers\n    -o, -odd  : print only odd numbers\n    -p, -prefix {PREFIX} : add a prefix to the numbers\n    -s, -suffix {SUFFIX} : add a suffix to the numbers\n\n";
	exit;
}

my $reverse = 0;
my $even    = 0;
my $odd     = 0;
my $prefix  = '';
my $suffix = '';

my $first = $ARGV[0];
my $last  = $ARGV[1];

GetOptions (
			"even"     => \$even,
			"odd"      => \$odd,
			"prefix=s" => \$prefix,
			"suffix=s" => \$suffix,
			"help"     => sub { help(); }
) or die help();

if ($first > $last) { $reverse = 1; }

if ($even && $odd)  { $even = 0; $odd = 0; }

if (!$reverse) {
	
	for (my $i = $first; $i <= $last; $i++) { print_int($i, $prefix, $suffix, $even, $odd); }
	exit;
	
} elsif ($reverse) {
	
	for (my $i = $first; $i >= $last; $i--) { print_int($i, $prefix, $suffix, $even, $odd); }
	exit;

}