#!/usr/bin/perl

use strict;
use warnings;

sub usage {
    print STDERR "Usage: $0 <file>\n";
    exit 1;
}

if (@ARGV!= 1) {
    usage();
}

my $file = $ARGV[0];

open my $fh, '<', $file or die "Cannot open $file: $!";

while (my $line = <$fh>) {
    chomp $line;
    if ($line =~ /^\s*$/) {
        next;
    }
    if ($line =~ /^\s*#/) {
        next;
    }
    if ($line =~ /^\s*//) {
        next;
    }
    if ($line =~ /^\s*$/) {
        next;
    }
    if ($line =~ /^\s*//) {
        next;
    }
    if ($line =~ /^\s*$/) {
        next;
    }
    if ($line =~ /^\s*//) {
        next;
    }
    if ($line =~ /^\s*$/) {
        next;
    }
    if ($line =~ /^\s*//) {
        next;
    }
}

close $fh;


