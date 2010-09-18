package Acme::CPANAuthors::ToBeLike;

use strict;
use warnings;
use vars qw($VERSION);

$VERSION = '0.02';

use Acme::CPANAuthors::Register (
  ALEXBIO => q[Alessandro Ghedini],
  AVAR => q[AEvar Arnfjord Bjarmason],
  BINGOS => q[Chris Williams],
  BLUEFEET => q[Aran Clary Deltac],
  CSJEWELL => q[Curtis Jewell],
  DOY => q[Jesse Luehrs],
  FLORA => q[Florian Ragwitz],
  JJNAPIORK => q[John Napiorkowski],
  JONASBN => q[jonasbn],
  LESPEA => q[Adam Lesperance],
  MARCEL => q[Marcel Gruenauer == hanekomu],
  MELO => q[Pedro Melo],
  RJBS => q[Ricardo SIGNES],
  SHARYANTO => q[Steven Haryanto],
  YANICK => q[Yanick Champoux],
);

q[We are POEsters];

__END__

=head1 NAME

Acme::CPANAuthors::ToBeLike - We are CPAN Authors to be like

=head1 SYNOPSIS

    use Acme::CPANAuthors;

    my $authors  = Acme::CPANAuthors->new('ToBeLike');

    my $number   = $authors->count;
    my @ids      = $authors->id;
    my @distros  = $authors->distributions("BINGOS");
    my $url      = $authors->avatar_url("BINGOS");
    my $kwalitee = $authors->kwalitee("BINGOS");
    my $name     = $authors->name("BINGOS");

=head1 DESCRIPTION

This class provides a hash of emulatable CPAN Authors' PAUSE ID and name to the L<Acme::CPANAuthors> module.

It is currently statically generated information, I hope to make it dynamic in the future.

=head1 CONTAINED AUTHORS

  ALEXBIO => q[Alessandro Ghedini],
  AVAR => q[AEvar Arnfjord Bjarmason],
  BINGOS => q[Chris Williams],
  BLUEFEET => q[Aran Clary Deltac],
  CSJEWELL => q[Curtis Jewell],
  DOY => q[Jesse Luehrs],
  FLORA => q[Florian Ragwitz],
  JJNAPIORK => q[John Napiorkowski],
  JONASBN => q[jonasbn],
  LESPEA => q[Adam Lesperance],
  MARCEL => q[Marcel Gruenauer == hanekomu],
  MELO => q[Pedro Melo],
  RJBS => q[Ricardo SIGNES],
  SHARYANTO => q[Steven Haryanto],
  YANICK => q[Yanick Champoux],

=head1 AUTHOR

Chris C<BinGOs> Williams <chris@bingosnet.co.uk>

=head1 LICENSE

Copyright E<copy> Chris Williams

This module may be used, modified, and distributed under the same terms as Perl itself. Please see the license that came with your Perl distribution for details.

=head1 SEE ALSO

L<Acme::CPANAuthors>

L<POE>

=cut
