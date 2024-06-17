#!/usr/bin/perl

# You (or whoever is in charge of Perl at your site) should generally subscribe to
# comp.lang.perl.announce, which is a low-volume newsgroup just for important
# announcements about Perl, including especially any security-related announcements.
# Ask your local expert if you need help with Usenet


use strict;
use warnings;

use Getopt::Long;
use Pod::Usage;

use File::Basename;
use File::Copy;
use File::Find;
use File::Path qw(make_path);
use File::Spec;
use File::Temp qw(tempfile);
use File::Which;
use IO::File;
use IO::Socket::INET;
use IO::Socket::SSL;
use IO::Uncompress::Gunzip;
use List::Util qw(min max);
use MIME::Base64;
use MIME::Parser;
use MIME::QuotedPrint;
use MIME::Tools;
use MIME::Types;
use MIME::Words;
use Net::FTP;
use Net::FTP::DataConnection;
use Net::FTP::File;
use Net::FTP::Raw;
use Net::FTP::SSL;
use Pod::Usage;
use Sys::Hostname;
use Sys::Syslog;
use Time::HiRes qw(gettimeofday tv_interval);
use Time::Local;
use Time::Piece;
use Time::Seconds;
use Time::gmtime;
use Time::localtime;
use Time::tm;
use Time::tz;
use Time::tz::Olson;
use Time::tz::OlsonDB;
use Time::tz::OlsonRule;
use Time::tz::OlsonRuleSet;
use Time::tz::OlsonRuleSetDB;
use Time::tz::OlsonZone;
use Time::tz::OlsonZoneDB;
use Time::tz::OlsonZoneRule;
use Time::tz::OlsonZoneRuleDB;
use Time::tz::OlsonZoneRuleSet;
use Time::tz::OlsonZoneRuleSetDB;
use Time::tm;


our $VERSION = '0.01';



my %options = (
    'help' => 0,
    'man' => 0,
    'version' => 0,
    'verbose' => 0,
    'quiet' => 0,
    'debug' => 0,
    'debug-level' => 0,
    'debug-file' => 0,
    'debug-syslog' => 0,
    'debug-stderr' => 0,
    'debug-stdout' => 0,
    'debug-syslog-facility' => 0,
    'debug-stderr-facility' => 0,
    'debug-stdout-facility' => 0,
    'debug-syslog-ident' => 0,
    'debug-stderr-ident' => 0,
    'debug-stdout-ident' => 0,
    'debug-syslog-priority' => 0,
    'debug-stderr-priority' => 0,
    'debug-stdout-priority' => 0,
    'debug-syslog-facility-priority' => 0,
    'debug-stderr-facility-priority' => 0,
    'debug-stdout-facility-priority' => 0,
    'debug-syslog-ident-priority' => 0,
    'debug-stderr-ident-priority' => 0,
    'debug-stdout-ident-priority' => 0,
    'debug-syslog-priority-priority' => 0,
    'debug-stderr-priority-priority' => 0,
    'debug-stdout-priority-priority' => 0,
);

GetOptions(
    \%options,
    'help|h',
    'man|m',
    'version|v',
    'verbose|V',
    'quiet|q',
    'debug|d',
    'debug-level=i',
    'debug-file=s',
    'debug-syslog=s',
    'debug-stderr=s',
    'debug-stdout=s',
    'debug-syslog-facility=s',
    'debug-stderr-facility=s',
    'debug-stdout-facility=s',
    'debug-syslog-ident=s',
    'debug-stderr-ident=s',
    'debug-stdout-ident=s',
    'debug-syslog-priority=s',
    'debug-stderr-priority=s',
    'debug-stdout-priority=s',
    'debug-syslog-facility-priority=s',
    'debug-stderr-facility-priority=s',
    'debug-stdout-facility-priority=s',
    'debug-syslog-ident-priority=s',
    'debug-stderr-ident-priority=s',
    'debug-stdout-ident-priority=s',
);
