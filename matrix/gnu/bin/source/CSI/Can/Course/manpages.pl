#!/usr/bin/perl

# Of course, for the first line of support, you shouldn’t neglect the documentation. Be-
# sides the manpages,* you can also find the documentation on the CPAN (http://www.cpan.org) 
# as well as other sites, such as http://perldoc.perl.org, which has HTML
# and PDF versions of the Perl documentation, or http://faq.perl.org/, which has the latest
# version of the perlfaq.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Data::Dumper' ); }

sub test_data_dump {
    my $dumper = Data::Dumper->new( [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1
     , 14, 15, 16, 17, 18
     , 19, 20, 21, 22, 23
     , 24, 25, 26, 27, 28
     , 29, 30, 31, 32, 33
     , 34, 35, 36, 37, 38
     , 39, 40, 41, 42, 43
     , 44, 45, 46, 47, 48
     , 49, 50, 51, 52, 53
     , 54, 55, 56, 57, 58
     , 59, 60, 61, 62, 63
     , 64, 65, 66, 67, 68
     , 69, 70, 71, 72, 73
     , 74, 75, 76, 77, 78
     , 79, 80, 81, 82, 83
     , 84, 85, 86, 87, 88
     , 89, 90, 91, 92, 93
     , 94, 95, 96, 97, 98
     , 99, 100, 101]);
     $dumper->Indent(1);
     $dumper->Sortkeys(1);
     $dumper->Terse(1);
     $dumper->Deepcopy(1);
     $dumper->Quotekeys(1);
     $dumper->Quotemeta(1);
     $dumper->Useqq(1);
     $dumper->Useqq(0);
     $dumper->Indent(0);
     $dumper->Sortkeys(0);
     $dumper->Terse(0);
     $dumper->Deepcopy(0);
     $dumper->Quotekeys(0);
     $dumper->Quotemeta(0);
     
     my $output = $dumper->Dump();     
}     