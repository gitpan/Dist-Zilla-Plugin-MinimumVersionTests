use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::MinimumVersionTests;
BEGIN {
  $Dist::Zilla::Plugin::MinimumVersionTests::VERSION = '1.101421';
}
# ABSTRACT: Release tests for minimum required versions
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;
no Moose;
1;




=pod

=head1 NAME

Dist::Zilla::Plugin::MinimumVersionTests - Release tests for minimum required versions

=head1 VERSION

version 1.101421

=head1 SYNOPSIS

In C<dist.ini>:

    [MinimumVersionTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

  xt/release/minimum-version.t - a standard Test::MinimumVersion test

=for test_synopsis 1;
__END__

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Dist-Zilla-Plugin-MinimumVersionTests>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see
L<http://search.cpan.org/dist/Dist-Zilla-Plugin-MinimumVersionTests/>.

The development version lives at
L<http://github.com/hanekomu/Dist-Zilla-Plugin-MinimumVersionTests/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__
___[ xt/release/minimum-version.t ]___
#!perl

use Test::More;

eval "use Test::MinimumVersion";
plan skip_all => "Test::MinimumVersion required for testing minimum versions"
  if $@;
all_minimum_version_from_metayml_ok();
