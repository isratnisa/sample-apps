# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2014e/australasia.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Palau;
$DateTime::TimeZone::Pacific::Palau::VERSION = '1.71';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Palau::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59958198124, #      utc_end 1900-12-31 15:02:04 (Mon)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59958230400, #    local_end 1901-01-01 00:00:00 (Tue)
32276,
0,
'LMT',
    ],
    [
59958198124, #    utc_start 1900-12-31 15:02:04 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
59958230524, #  local_start 1901-01-01 00:02:04 (Tue)
DateTime::TimeZone::INFINITY, #    local_end
32400,
0,
'PWT',
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

