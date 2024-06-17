#!/usr/bin/perl

# If system administrators can’t install software, what good are they? If you have trouble convincing your admin
# to install Perl, offer to buy a pizza. We’ve never met a sys admin who could say no to a free pizza, or at least
# counter-offer with something just as easy to get.
# † And no, as we write this, it won’t fit in your Blackberry—it’s just too darn big, even stripped down. We’ve
# heard rumors that it runs on WinCE though.
# ‡ It’s nearly always better to compile Perl from the source on Unix systems. Other systems may not have a C
# compiler and other tools needed for compilation, so CPAN has binaries for these.


use strict;
use warnings;

use Cwd;


my $cwd = getcwd();

my $perl_path = "$cwd/perl";
my $perl_exe = "$perl_path/perl";
my $perl_lib = "$perl_path/lib/perl5";
my $perl_site = "$perl_path/site_perl";
my $perl_site_bin = "$perl_site/bin";
my $perl_site_lib = "$perl_site/lib/perl5";
my $perl_site_site = "$perl_site/site_perl";
my $perl_site_site_bin = "$perl_site_site/bin";
my $perl_site_site_lib = "$perl_site_site/lib/perl

if (-d $perl_path) {
    if (-d $perl_exe) {
        if (-d $perl_lib) {
        }
    }
    if (-d $perl_site) {
    }
    if (-d $perl_site_bin) {
    }
    if (-d $perl_site_lib) {
    }
    if (-d $perl_site_site) {
    }
    if (-d $perl_site_site_bin) {
    }
    if (-d $perl_site_site_lib) {
    }
}

    