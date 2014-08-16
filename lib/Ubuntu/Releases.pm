package Ubuntu::Releases;

use 5.010001;
use strict;
use warnings;

use Perinci::Sub::Gen::AccessTable qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_ubuntu_releases
               );

our %SPEC;

our $VERSION = '0.02'; # VERSION
our $DATE = '2014-08-16'; # DATE

# BEGIN FRAGMENT id=meta
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudangdata/table/ubuntu_release/meta.yaml
# src-revision: 1c3da55a6f41b422b2a7803eb408c04526fb9e76
# revision-date: Tue May 27 17:45:03 2014 +0700
# generate-date: Wed May 28 11:12:30 2014
# generated-by: /mnt/home/s1/repos/gudangdata/bin/gen-perl-meta-snippet
our $meta = {
  fields => {
    code_name       => {
                         index    => 1,
                         schema   => "str*",
                         sortable => 1,
                         summary  => "Code name",
                         unique   => 1,
                       },
    kernelver       => { index => 5, schema => "str*", sortable => 1, summary => "Kernel version" },
    reldate         => { index => 2, schema => "date*", sortable => 1, summary => "Release date" },
    supdate_desktop => {
                         index    => 3,
                         schema   => "date*",
                         sortable => 1,
                         summary  => "Supported until (for desktop)",
                       },
    supdate_server  => {
                         index    => 4,
                         schema   => "date*",
                         sortable => 1,
                         summary  => "Supported until (for servers)",
                       },
    version         => { index => 0, schema => "str*", sortable => 1, summary => "Version", unique => 1 },
  },
  pk => "version",
  summary => "Ubuntu releases",
};
# END FRAGMENT id=meta
# BEGIN FRAGMENT id=data
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudangdata/table/ubuntu_release/data.csv
# src-revision: 1c3da55a6f41b422b2a7803eb408c04526fb9e76
# revision-date: Tue May 27 17:45:03 2014 +0700
# generate-date: Wed May 28 11:12:30 2014
# generated-by: /mnt/home/s1/repos/gudangdata/bin/gen-perl-data-snippet
our $data = [
    ['4.10','Warty Warthog','2004-10-20','2006-04-30','2006-04-30','2.6.8'],
    ['5.04','Hoary Hedgehog','2005-04-08','2006-10-31','2006-10-31','2.6.10'],
    ['5.10','Breezy Badger','2005-10-13','2007-04-13','2007-04-13','2.6.12'],
    ['6.06 LTS','Dapper Drake','2006-06-01','2009-07-14','2011-06-01','2.6.15'],
    ['6.10','Edgy Eft','2006-10-26','2008-04-25','2008-04-25','2.6.17'],
    ['7.04','Feisty Fawn','2007-04-19','2008-10-19','2008-10-19','2.6.20'],
    ['7.10','Gutsy Gibbon','2007-10-18','2009-04-18','2009-04-18','2.6.22'],
    ['8.04 LTS','Hardy Heron','2008-04-24','2011-05-12','2013-05-09','2.6.24'],
    ['8.10','Intrepid Ibex','2008-10-30','2010-04-30','2010-04-30','2.6.27'],
    ['9.04','Jaunty Jackalope','2009-04-23','2010-10-23','2010-10-23','2.6.28'],
    ['9.10','Karmic Koala','2009-10-29','2011-04-30','2011-04-30','2.6.31'],
    ['10.04 LTS','Lucid Lynx','2010-04-29','2013-05-09','2015-04-30','2.6.32'],
    ['10.10','Maverick Meerkat','2010-10-10','2012-04-10','2012-04-10','2.6.35'],
    ['11.04','Natty Narwhal','2011-04-28','2012-10-28','2012-10-28','2.6.38'],
    ['11.10','Oneiric Ocelot','2011-10-13','2013-05-09','2013-05-09','3.0'],
    ['12.04 LTS','Precise Pangolin','2012-04-26','2017-04-26','2017-04-26','3.2'],
    ['12.10','Quantal Quetzal','2012-10-18','2014-05-16','2014-05-16','3.5'],
    ['13.04','Raring Ringtail','2013-04-25','2014-01-27','2014-01-27','3.8'],
    ['13.10','Saucy Salamander','2013-10-17','2014-07-31','2014-07-31','3.11'],
    ['14.04 LTS','Trusty Tahr','2014-04-17','2019-04-30','2019-04-30','3.13'],
    ['14.10','Utopic Unicorn','2014-10-16','2015-07-31','',''],
]
;
# END FRAGMENT id=data

my $res = gen_read_table_func(
    name => 'list_ubuntu_releases',
    table_data => $data,
    table_spec => $meta,
    #langs => ['en_US', 'id_ID'],
);
die "BUG: Can't generate func: $res->[0] - $res->[1]" unless $res->[0] == 200;

1;
# ABSTRACT: List Ubuntu releases

__END__

=pod

=encoding UTF-8

=head1 NAME

Ubuntu::Releases - List Ubuntu releases

=head1 VERSION

This document describes version 0.02 of Ubuntu::Releases (from Perl distribution Ubuntu-Releases), released on 2014-08-16.

=head1 SYNOPSIS

 use Ubuntu::Releases;
 my $res = list_ubuntu_releases(detail=>1);
 # raw data is in $Ubuntu::Releases::data;

=head1 DESCRIPTION

This module contains list of Ubuntu releases. Data source is currently at:
https://github.com/sharyanto/gudangdata (table/ubuntu_release).

=head1 FUNCTIONS


=head2 list_ubuntu_releases(%args) -> [status, msg, result, meta]

Ubuntu releases.

REPLACE ME

Arguments ('*' denotes required arguments):

=over 4

=item * B<code_name> => I<str>

Only return records where the 'code_name' field equals specified value.

=item * B<code_name.contains> => I<str>

Only return records where the 'code_name' field contains specified text.

=item * B<code_name.in> => I<array>

Only return records where the 'code_name' field is in the specified values.

=item * B<code_name.is> => I<str>

Only return records where the 'code_name' field equals specified value.

=item * B<code_name.isnt> => I<str>

Only return records where the 'code_name' field does not equal specified value.

=item * B<code_name.max> => I<str>

Only return records where the 'code_name' field is less than or equal to specified value.

=item * B<code_name.min> => I<str>

Only return records where the 'code_name' field is greater than or equal to specified value.

=item * B<code_name.not_contains> => I<str>

Only return records where the 'code_name' field does not contain specified text.

=item * B<code_name.not_in> => I<array>

Only return records where the 'code_name' field is not in the specified values.

=item * B<code_name.xmax> => I<str>

Only return records where the 'code_name' field is less than specified value.

=item * B<code_name.xmin> => I<str>

Only return records where the 'code_name' field is greater than specified value.

=item * B<detail> => I<bool> (default: 0)

Return array of full records instead of just ID fields.

By default, only the key (ID) field is returned per result entry.

=item * B<fields> => I<array>

Select fields to return.

=item * B<kernelver> => I<str>

Only return records where the 'kernelver' field equals specified value.

=item * B<kernelver.contains> => I<str>

Only return records where the 'kernelver' field contains specified text.

=item * B<kernelver.in> => I<array>

Only return records where the 'kernelver' field is in the specified values.

=item * B<kernelver.is> => I<str>

Only return records where the 'kernelver' field equals specified value.

=item * B<kernelver.isnt> => I<str>

Only return records where the 'kernelver' field does not equal specified value.

=item * B<kernelver.max> => I<str>

Only return records where the 'kernelver' field is less than or equal to specified value.

=item * B<kernelver.min> => I<str>

Only return records where the 'kernelver' field is greater than or equal to specified value.

=item * B<kernelver.not_contains> => I<str>

Only return records where the 'kernelver' field does not contain specified text.

=item * B<kernelver.not_in> => I<array>

Only return records where the 'kernelver' field is not in the specified values.

=item * B<kernelver.xmax> => I<str>

Only return records where the 'kernelver' field is less than specified value.

=item * B<kernelver.xmin> => I<str>

Only return records where the 'kernelver' field is greater than specified value.

=item * B<q> => I<str>

Search.

=item * B<random> => I<bool> (default: 0)

Return records in random order.

=item * B<reldate> => I<date>

Only return records where the 'reldate' field equals specified value.

=item * B<reldate.in> => I<array>

Only return records where the 'reldate' field is in the specified values.

=item * B<reldate.is> => I<date>

Only return records where the 'reldate' field equals specified value.

=item * B<reldate.isnt> => I<date>

Only return records where the 'reldate' field does not equal specified value.

=item * B<reldate.max> => I<date>

Only return records where the 'reldate' field is less than or equal to specified value.

=item * B<reldate.min> => I<date>

Only return records where the 'reldate' field is greater than or equal to specified value.

=item * B<reldate.not_in> => I<array>

Only return records where the 'reldate' field is not in the specified values.

=item * B<reldate.xmax> => I<date>

Only return records where the 'reldate' field is less than specified value.

=item * B<reldate.xmin> => I<date>

Only return records where the 'reldate' field is greater than specified value.

=item * B<result_limit> => I<int>

Only return a certain number of records.

=item * B<result_start> => I<int> (default: 1)

Only return starting from the n'th record.

=item * B<sort> => I<str>

Order records according to certain field(s).

A list of field names separated by comma. Each field can be prefixed with '-' to
specify descending order instead of the default ascending.

=item * B<supdate_desktop> => I<date>

Only return records where the 'supdate_desktop' field equals specified value.

=item * B<supdate_desktop.in> => I<array>

Only return records where the 'supdate_desktop' field is in the specified values.

=item * B<supdate_desktop.is> => I<date>

Only return records where the 'supdate_desktop' field equals specified value.

=item * B<supdate_desktop.isnt> => I<date>

Only return records where the 'supdate_desktop' field does not equal specified value.

=item * B<supdate_desktop.max> => I<date>

Only return records where the 'supdate_desktop' field is less than or equal to specified value.

=item * B<supdate_desktop.min> => I<date>

Only return records where the 'supdate_desktop' field is greater than or equal to specified value.

=item * B<supdate_desktop.not_in> => I<array>

Only return records where the 'supdate_desktop' field is not in the specified values.

=item * B<supdate_desktop.xmax> => I<date>

Only return records where the 'supdate_desktop' field is less than specified value.

=item * B<supdate_desktop.xmin> => I<date>

Only return records where the 'supdate_desktop' field is greater than specified value.

=item * B<supdate_server> => I<date>

Only return records where the 'supdate_server' field equals specified value.

=item * B<supdate_server.in> => I<array>

Only return records where the 'supdate_server' field is in the specified values.

=item * B<supdate_server.is> => I<date>

Only return records where the 'supdate_server' field equals specified value.

=item * B<supdate_server.isnt> => I<date>

Only return records where the 'supdate_server' field does not equal specified value.

=item * B<supdate_server.max> => I<date>

Only return records where the 'supdate_server' field is less than or equal to specified value.

=item * B<supdate_server.min> => I<date>

Only return records where the 'supdate_server' field is greater than or equal to specified value.

=item * B<supdate_server.not_in> => I<array>

Only return records where the 'supdate_server' field is not in the specified values.

=item * B<supdate_server.xmax> => I<date>

Only return records where the 'supdate_server' field is less than specified value.

=item * B<supdate_server.xmin> => I<date>

Only return records where the 'supdate_server' field is greater than specified value.

=item * B<version> => I<str>

Only return records where the 'version' field equals specified value.

=item * B<version.contains> => I<str>

Only return records where the 'version' field contains specified text.

=item * B<version.in> => I<array>

Only return records where the 'version' field is in the specified values.

=item * B<version.is> => I<str>

Only return records where the 'version' field equals specified value.

=item * B<version.isnt> => I<str>

Only return records where the 'version' field does not equal specified value.

=item * B<version.max> => I<str>

Only return records where the 'version' field is less than or equal to specified value.

=item * B<version.min> => I<str>

Only return records where the 'version' field is greater than or equal to specified value.

=item * B<version.not_contains> => I<str>

Only return records where the 'version' field does not contain specified text.

=item * B<version.not_in> => I<array>

Only return records where the 'version' field is not in the specified values.

=item * B<version.xmax> => I<str>

Only return records where the 'version' field is less than specified value.

=item * B<version.xmin> => I<str>

Only return records where the 'version' field is greater than specified value.

=item * B<with_field_names> => I<bool>

Return field names in each record (as hash/associative array).

When enabled, function will return each record as hash/associative array
(field name => value pairs). Otherwise, function will return each record
as list/array (field value, field value, ...).

=back

Return value:

Returns an enveloped result (an array).

First element (status) is an integer containing HTTP status code
(200 means OK, 4xx caller error, 5xx function error). Second element
(msg) is a string containing error message, or 'OK' if status is
200. Third element (result) is optional, the actual result. Fourth
element (meta) is called result metadata and is optional, a hash
that contains extra information.

 (any)

=head1 SEE ALSO

L<Debian::Releases>

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Ubuntu-Releases>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Ubuntu-Releases>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Ubuntu-Releases>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
