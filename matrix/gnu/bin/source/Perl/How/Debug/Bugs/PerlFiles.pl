#!/usr/bin/perl

# What If I Find a Bug in Perl?

# The first thing to do when you find a bug is to check the documentation* again.† Perl
# has so many special features and exceptions to rules that you may have discovered a
# feature, not a bug. Also, check that you don’t have an older version of Perl; maybe you
# found something that’s been fixed in a more recent version.

use strict;
use warnings;

use Test::More tests => 1;

use_ok( 'Data::Object::Array' );

sub test_object_array_perl {
    my $object_array = Data::Object::Array->new([1, 2, 3]);

    isa_ok(
        $object_array,
        'Data::Object::Array',
        'object_array isa Data::Object::Array'
    );
}

