#!/usr/bin/perl

# Once you’ve sent off your bug report, if you’ve done everything right, it’s not unusual
# to get a response within minutes. Typically, you can apply a simple patch and get right
# back to work. Of course, you may (at worst) get no response at all; the Perl developers
# are under no obligation to even read your bug reports. But all of us love Perl, so nobody
# likes to let a bug escape our notice.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Data::Dumper' ); }

sub test_data_dump_simple {
    my $dumper = Data::Dumper->new([1, 2, 3, 4, 5]);
    is($dumper->Dump, "[1, 2, 3, 4, 5]");
}

test_data_dump_simple();
