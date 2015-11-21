###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file en.xml
# The source file version number was 1.234, generated on
# 2009/06/17 16:15:14.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::en;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "AM", "PM" ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\,\ MMMM\ d\,\ y";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "MMMM\ d\,\ y";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "MMM\ d\,\ y";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "M\/d\/yy";
    sub date_format_short { return $date_format_short }
}

{
    my $datetime_format = "\{1\}\ \{0\}";
    sub datetime_format { return $datetime_format }
}

{
    my $day_format_abbreviated = [ "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "M", "T", "W", "T", "F", "S", "S" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "BC", "AD" ];
    sub era_abbreviated { return $era_abbreviated }
}
{
    my $era_narrow = [ "B", "A" ];
    sub era_narrow { return $era_narrow }
}
{
    my $era_wide = [ "Before\ Christ", "Anno\ Domini" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "Q1", "Q2", "Q3", "Q4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}

sub quarter_format_narrow { $_[0]->quarter_stand_alone_narrow() }

{
    my $quarter_format_wide = [ "1st\ quarter", "2nd\ quarter", "3rd\ quarter", "4th\ quarter" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }

{
    my $quarter_stand_alone_narrow = [ "1", "2", "3", "4" ];
    sub quarter_stand_alone_narrow { return $quarter_stand_alone_narrow }
}

sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "h\:mm\:ss\ a\ zzzz";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "h\:mm\:ss\ a\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "h\:mm\:ss\ a";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "h\:mm\ a";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_EEEd = "d\ EEE";
    sub _format_for_EEEd { return $_format_for_EEEd }
}

{
    my $_format_for_Hm = "H\:mm";
    sub _format_for_Hm { return $_format_for_Hm }
}

{
    my $_format_for_Hms = "H\:mm\:ss";
    sub _format_for_Hms { return $_format_for_Hms }
}

{
    my $_format_for_M = "L";
    sub _format_for_M { return $_format_for_M }
}

{
    my $_format_for_MEd = "E\,\ M\/d";
    sub _format_for_MEd { return $_format_for_MEd }
}

{
    my $_format_for_MMM = "LLL";
    sub _format_for_MMM { return $_format_for_MMM }
}

{
    my $_format_for_MMMEd = "E\,\ MMM\ d";
    sub _format_for_MMMEd { return $_format_for_MMMEd }
}

{
    my $_format_for_MMMMEd = "E\,\ MMMM\ d";
    sub _format_for_MMMMEd { return $_format_for_MMMMEd }
}

{
    my $_format_for_MMMMd = "MMMM\ d";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_MMMd = "MMM\ d";
    sub _format_for_MMMd { return $_format_for_MMMd }
}

{
    my $_format_for_Md = "M\/d";
    sub _format_for_Md { return $_format_for_Md }
}

{
    my $_format_for_d = "d";
    sub _format_for_d { return $_format_for_d }
}

{
    my $_format_for_hm = "h\:mm\ a";
    sub _format_for_hm { return $_format_for_hm }
}

{
    my $_format_for_ms = "mm\:ss";
    sub _format_for_ms { return $_format_for_ms }
}

{
    my $_format_for_y = "y";
    sub _format_for_y { return $_format_for_y }
}

{
    my $_format_for_yM = "M\/yyyy";
    sub _format_for_yM { return $_format_for_yM }
}

{
    my $_format_for_yMEd = "EEE\,\ M\/d\/yyyy";
    sub _format_for_yMEd { return $_format_for_yMEd }
}

{
    my $_format_for_yMMM = "MMM\ y";
    sub _format_for_yMMM { return $_format_for_yMMM }
}

{
    my $_format_for_yMMMEd = "EEE\,\ MMM\ d\,\ y";
    sub _format_for_yMMMEd { return $_format_for_yMMMEd }
}

{
    my $_format_for_yMMMM = "MMMM\ y";
    sub _format_for_yMMMM { return $_format_for_yMMMM }
}

{
    my $_format_for_yQ = "Q\ yyyy";
    sub _format_for_yQ { return $_format_for_yQ }
}

{
    my $_format_for_yQQQ = "QQQ\ y";
    sub _format_for_yQQQ { return $_format_for_yQQQ }
}

{
    my $_available_formats =
        {
          "EEEd" => "d\ EEE",
          "Hm" => "H\:mm",
          "Hms" => "H\:mm\:ss",
          "M" => "L",
          "MEd" => "E\,\ M\/d",
          "MMM" => "LLL",
          "MMMEd" => "E\,\ MMM\ d",
          "MMMMEd" => "E\,\ MMMM\ d",
          "MMMMd" => "MMMM\ d",
          "MMMd" => "MMM\ d",
          "Md" => "M\/d",
          "d" => "d",
          "hm" => "h\:mm\ a",
          "ms" => "mm\:ss",
          "y" => "y",
          "yM" => "M\/yyyy",
          "yMEd" => "EEE\,\ M\/d\/yyyy",
          "yMMM" => "MMM\ y",
          "yMMMEd" => "EEE\,\ MMM\ d\,\ y",
          "yMMMM" => "MMMM\ y",
          "yQ" => "Q\ yyyy",
          "yQQQ" => "QQQ\ y"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::en

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'en' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for English.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Monday
  Tuesday
  Wednesday
  Thursday
  Friday
  Saturday
  Sunday

=head3 Abbreviated (format)

  Mon
  Tue
  Wed
  Thu
  Fri
  Sat
  Sun

=head3 Narrow (format)

  M
  T
  W
  T
  F
  S
  S

=head3 Wide (stand-alone)

  Monday
  Tuesday
  Wednesday
  Thursday
  Friday
  Saturday
  Sunday

=head3 Abbreviated (stand-alone)

  Mon
  Tue
  Wed
  Thu
  Fri
  Sat
  Sun

=head3 Narrow (stand-alone)

  M
  T
  W
  T
  F
  S
  S

=head2 Months

=head3 Wide (format)

  January
  February
  March
  April
  May
  June
  July
  August
  September
  October
  November
  December

=head3 Abbreviated (format)

  Jan
  Feb
  Mar
  Apr
  May
  Jun
  Jul
  Aug
  Sep
  Oct
  Nov
  Dec

=head3 Narrow (format)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  January
  February
  March
  April
  May
  June
  July
  August
  September
  October
  November
  December

=head3 Abbreviated (stand-alone)

  Jan
  Feb
  Mar
  Apr
  May
  Jun
  Jul
  Aug
  Sep
  Oct
  Nov
  Dec

=head3 Narrow (stand-alone)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  1st quarter
  2nd quarter
  3rd quarter
  4th quarter

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1st quarter
  2nd quarter
  3rd quarter
  4th quarter

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  Before Christ
  Anno Domini

=head3 Abbreviated

  BC
  AD

=head3 Narrow

  B
  A

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Tuesday, February 5, 2008
   1995-12-22T09:05:02 = Friday, December 22, 1995
  -0010-09-15T04:44:23 = Saturday, September 15, -10

=head3 Long

   2008-02-05T18:30:30 = February 5, 2008
   1995-12-22T09:05:02 = December 22, 1995
  -0010-09-15T04:44:23 = September 15, -10

=head3 Medium

   2008-02-05T18:30:30 = Feb 5, 2008
   1995-12-22T09:05:02 = Dec 22, 1995
  -0010-09-15T04:44:23 = Sep 15, -10

=head3 Short

   2008-02-05T18:30:30 = 2/5/08
   1995-12-22T09:05:02 = 12/22/95
  -0010-09-15T04:44:23 = 9/15/-10

=head3 Default

   2008-02-05T18:30:30 = Feb 5, 2008
   1995-12-22T09:05:02 = Dec 22, 1995
  -0010-09-15T04:44:23 = Sep 15, -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 6:30:30 PM UTC
   1995-12-22T09:05:02 = 9:05:02 AM UTC
  -0010-09-15T04:44:23 = 4:44:23 AM UTC

=head3 Long

   2008-02-05T18:30:30 = 6:30:30 PM UTC
   1995-12-22T09:05:02 = 9:05:02 AM UTC
  -0010-09-15T04:44:23 = 4:44:23 AM UTC

=head3 Medium

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head3 Short

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 Default

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = Tuesday, February 5, 2008 6:30:30 PM UTC
   1995-12-22T09:05:02 = Friday, December 22, 1995 9:05:02 AM UTC
  -0010-09-15T04:44:23 = Saturday, September 15, -10 4:44:23 AM UTC

=head3 Long

   2008-02-05T18:30:30 = February 5, 2008 6:30:30 PM UTC
   1995-12-22T09:05:02 = December 22, 1995 9:05:02 AM UTC
  -0010-09-15T04:44:23 = September 15, -10 4:44:23 AM UTC

=head3 Medium

   2008-02-05T18:30:30 = Feb 5, 2008 6:30:30 PM
   1995-12-22T09:05:02 = Dec 22, 1995 9:05:02 AM
  -0010-09-15T04:44:23 = Sep 15, -10 4:44:23 AM

=head3 Short

   2008-02-05T18:30:30 = 2/5/08 6:30 PM
   1995-12-22T09:05:02 = 12/22/95 9:05 AM
  -0010-09-15T04:44:23 = 9/15/-10 4:44 AM

=head3 Default

   2008-02-05T18:30:30 = Feb 5, 2008 6:30:30 PM
   1995-12-22T09:05:02 = Dec 22, 1995 9:05:02 AM
  -0010-09-15T04:44:23 = Sep 15, -10 4:44:23 AM

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Tue
   1995-12-22T09:05:02 = 22 Fri
  -0010-09-15T04:44:23 = 15 Sat

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M/d)

   2008-02-05T18:30:30 = 2/5
   1995-12-22T09:05:02 = 12/22
  -0010-09-15T04:44:23 = 9/15

=head3 MEd (E, M/d)

   2008-02-05T18:30:30 = Tue, 2/5
   1995-12-22T09:05:02 = Fri, 12/22
  -0010-09-15T04:44:23 = Sat, 9/15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Feb
   1995-12-22T09:05:02 = Dec
  -0010-09-15T04:44:23 = Sep

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Feb 5
   1995-12-22T09:05:02 = Dec 22
  -0010-09-15T04:44:23 = Sep 15

=head3 MMMEd (E, MMM d)

   2008-02-05T18:30:30 = Tue, Feb 5
   1995-12-22T09:05:02 = Fri, Dec 22
  -0010-09-15T04:44:23 = Sat, Sep 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = February 5
   1995-12-22T09:05:02 = December 22
  -0010-09-15T04:44:23 = September 15

=head3 MMMMEd (E, MMMM d)

   2008-02-05T18:30:30 = Tue, February 5
   1995-12-22T09:05:02 = Fri, December 22
  -0010-09-15T04:44:23 = Sat, September 15

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (M/yyyy)

   2008-02-05T18:30:30 = 2/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 9/-010

=head3 yMEd (EEE, M/d/yyyy)

   2008-02-05T18:30:30 = Tue, 2/5/2008
   1995-12-22T09:05:02 = Fri, 12/22/1995
  -0010-09-15T04:44:23 = Sat, 9/15/-010

=head3 yMMM (MMM y)

   2008-02-05T18:30:30 = Feb 2008
   1995-12-22T09:05:02 = Dec 1995
  -0010-09-15T04:44:23 = Sep -10

=head3 yMMMEd (EEE, MMM d, y)

   2008-02-05T18:30:30 = Tue, Feb 5, 2008
   1995-12-22T09:05:02 = Fri, Dec 22, 1995
  -0010-09-15T04:44:23 = Sat, Sep 15, -10

=head3 yMMMM (MMMM y)

   2008-02-05T18:30:30 = February 2008
   1995-12-22T09:05:02 = December 1995
  -0010-09-15T04:44:23 = September -10

=head3 yQ (Q yyyy)

   2008-02-05T18:30:30 = 1 2008
   1995-12-22T09:05:02 = 4 1995
  -0010-09-15T04:44:23 = 3 -010

=head3 yQQQ (QQQ y)

   2008-02-05T18:30:30 = Q1 2008
   1995-12-22T09:05:02 = Q4 1995
  -0010-09-15T04:44:23 = Q3 -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

No

=head3 Local first day of the week

Monday


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
