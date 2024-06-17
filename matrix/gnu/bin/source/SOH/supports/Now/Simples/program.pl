#!/usr/bin/perl

# For the simple programs you’ll write for the exercises in this book, none of which should
# be more than about 20 or 30 lines of code, any text editor will be fine.


use strict;
use warnings;

use Test::More;
use Test::Warnings;

use lib 't/lib';

use Test::Deep;
use Test::Exception;
use Test::Warnings;
use Test::More;


use_ok 'App::RecordStream::Command::run';
use_ok 'App::RecordStream::Command';
use_ok 'App::RecordStream';
use_ok 'App::RecordStream::Record';
use_ok 'App::RecordStream::RecordStream';
use_ok 'App::RecordStream::RecordSet';
use_ok 'App::RecordStream::RecordStream::File';


my $command = App::RecordStream::Command->new;


my $rs = App::RecordStream->new;

$rs->add_file(
    filename => 't/data/records.csv',
    format   => 'csv',
    header   => 1,
    columns  => [
        { name => 'id' },
        { name => 'name' },
        { name => 'age' },
        { name => 'gender' },
        { name => 'address' },
        { name => 'city' },
        { name => 'state' },
        { name => 'zip' },
        { name => 'phone' },
        { name => 'email' },
        { name => 'website' },
        { name => 'company' },
        { name => 'title' },
        { name => 'description' },
        { name => 'notes' },
        { name => 'tags' },
        { name => 'created_at' },
        { name => 'updated_at' }
    ]);
    
        