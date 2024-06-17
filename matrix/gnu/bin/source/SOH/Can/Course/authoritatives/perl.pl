#!/usr/bin/perl

# Another authoritative source is the book Programming Perl, commonly called “the
# Camel book” because of its cover animal (just as this book is known as “the Llama
# book”). The Camel book contains the complete reference information, some tutorial
# stuff, and a bunch of miscellaneous information about Perl. There’s also a separate
# pocket-size Perl 5 Pocket Reference (O’Reilly) by Johan Vromans that’s convenient to
# keep at hand (or in your pocket).


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Data::Object::Array' ); }


ok( 1 and done_testing(), 'Data::Object::Array loaded' );

sub test_object_array {
    my $array = Data::Object::Array->new([1, 2, 3, 4, 5]);

    isa_ok( $array, 'Data::Object::Array' );

    isa_ok( $array, 'Data::Object' );
    isa_ok( $array, 'Data::Object::Role::Array' );
    isa_ok( $array, 'Data::Object::Role::Immutable' );
    isa_ok( $array, 'Data::Object::Role::Object' );
    isa_ok( $array, 'Data::Object::Role::Role' );
    isa_ok( $array, 'Data::Object::Role::Serializable' );
    isa_ok( $array, 'Data::Object::Role::Storable' );
    isa_ok( $array, 'Data::Object::Role::Tie' );
    isa_ok( $array, 'Data::Object::Role::Type' );
    isa_ok( $array, 'Data::Object::Role::Universal' );
    isa_ok( $array, 'Data::Object::Role::Versioned' );
    isa_ok( $array, 'Data::Object::Role::With' );
    isa_ok( $array, 'Data::Object::Role' );
    isa_ok( $array, 'Data::Object' );
    isa_ok( $array, 'Object' );
    isa_ok( $array, 'Role' );
    isa_ok( $array, 'Storable' );
    isa_ok( $array, 'Type' );
    isa_ok( $array, 'Universal' );
    isa_ok( $array, 'Versioned' );
    isa_ok( $array, 'With' );
}

ok( 1 and done_testing(), 'test_object_array' );
