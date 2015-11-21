# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2014e/australasia.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Saipan;
$DateTime::TimeZone::Pacific::Saipan::VERSION = '1.71';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Saipan::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
58191056220, #      utc_end 1844-12-31 14:17:00 (Tue)
DateTime::TimeZone::NEG_INFINITY, #  local_start
58191004800, #    local_end 1844-12-31 00:00:00 (Tue)
-51420,
0,
'LMT',
    ],
    [
58191056220, #    utc_start 1844-12-31 14:17:00 (Tue)
59958195420, #      utc_end 1900-12-31 14:17:00 (Mon)
58191091200, #  local_start 1845-01-01 00:00:00 (Wed)
59958230400, #    local_end 1901-01-01 00:00:00 (Tue)
34980,
0,
'LMT',
    ],
    [
59958195420, #    utc_start 1900-12-31 14:17:00 (Mon)
62127702000, #      utc_end 1969-09-30 15:00:00 (Tue)
59958227820, #  local_start 1900-12-31 23:17:00 (Mon)
62127734400, #    local_end 1969-10-01 00:00:00 (Wed)
32400,
0,
'MPT',
    ],
    [
62127702000, #    utc_start 1969-09-30 15:00:00 (Tue)
63113176800, #      utc_end 2000-12-22 14:00:00 (Fri)
62127738000, #  local_start 1969-10-01 01:00:00 (Wed)
63113212800, #    local_end 2000-12-23 00:00:00 (Sat)
36000,
0,
'MPT',
    ],
    [
63113176800, #    utc_start 2000-12-22 14:00:00 (Fri)
DateTime::TimeZone::INFINITY, #      utc_end
63113212800, #  local_start 2000-12-23 00:00:00 (Sat)
DateTime::TimeZone::INFINITY, #    local_end
36000,
0,
'ChST',
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

