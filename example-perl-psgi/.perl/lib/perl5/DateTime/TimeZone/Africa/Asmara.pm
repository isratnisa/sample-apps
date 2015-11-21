# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2014e/africa.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Asmara;
$DateTime::TimeZone::Africa::Asmara::VERSION = '1.71';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Asmara::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
58980000268, #      utc_end 1869-12-31 21:24:28 (Fri)
DateTime::TimeZone::NEG_INFINITY, #  local_start
58980009600, #    local_end 1870-01-01 00:00:00 (Sat)
9332,
0,
'LMT',
    ],
    [
58980000268, #    utc_start 1869-12-31 21:24:28 (Fri)
59611152268, #      utc_end 1889-12-31 21:24:28 (Tue)
58980009600, #  local_start 1870-01-01 00:00:00 (Sat)
59611161600, #    local_end 1890-01-01 00:00:00 (Wed)
9332,
0,
'AMT',
    ],
    [
59611152268, #    utc_start 1889-12-31 21:24:28 (Tue)
61073472280, #      utc_end 1936-05-04 21:24:40 (Mon)
59611161588, #  local_start 1889-12-31 23:59:48 (Tue)
61073481600, #    local_end 1936-05-05 00:00:00 (Tue)
9320,
0,
'ADMT',
    ],
    [
61073472280, #    utc_start 1936-05-04 21:24:40 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
61073483080, #  local_start 1936-05-05 00:24:40 (Tue)
DateTime::TimeZone::INFINITY, #    local_end
10800,
0,
'EAT',
    ],
];

sub olson_version { '2014e' }

sub has_dst_changes { 0 }

sub _max_year { 2024 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

