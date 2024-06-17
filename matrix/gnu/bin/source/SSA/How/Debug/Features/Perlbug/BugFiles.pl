#!/usr/bin/perl

# Once you’re 100% certain that you’ve found a real bug, cook up a test case. (What,
# you haven’t done so already?) The ideal test case is a tiny self-contained program that
# any Perl user could run to see the same (mis)behavior you’ve found. Once you’ve got
# a test case that clearly shows the bug, use the perlbug utility (which comes with Perl)
# to report the bug. That will normally send email from you to the Perl developers, so
# don’t use perlbug until you’ve got your test case ready.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN {
    use_ok( 'App::perlbug' );
}

sub test_perlbug {
    my $class = shift;
    my $args  = shift;

    my $perlbug = App::perlbug->new( $args );

    isa_ok( $perlbug, $class );
}

test_perlbug( 'App::perlbug', {} );
