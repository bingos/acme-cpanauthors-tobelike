package Acme::CPANAuthors::ToBeLike;

#ABSTRACT: BeLike other CPAN Authors

use strict;
use warnings;

use Acme::CPANAuthors::Register (
  AVAR => q[AEvar Arnfjord Bjarmason],
  BINGOS => q[Chris Williams],
  BLUEFEET => q[Aran Clary Deltac],
  BURAK => q[Burak Gursoy],
  CEBJYRE => q[Glenn Fowler],
  CSJEWELL => q[Curtis Jewell],
  DOY => q[Jesse Luehrs],
  FLORA => q[Florian Ragwitz],
  JJNAPIORK => q[John Napiorkowski],
  JONASBN => q[jonasbn],
  LESPEA => q[Adam Lesperance],
  MARCEL => q[Marcel Gruenauer],
  MELO => q[Pedro Melo],
  RJBS => q[Ricardo SIGNES],
  SHARYANTO => q[Steven Haryanto],
  YANICK => q[Yanick Champoux],
);

q[BeLikeEveryoneElse];

=pod

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

  AVAR => q[AEvar Arnfjord Bjarmason],
  BINGOS => q[Chris Williams],
  BLUEFEET => q[Aran Clary Deltac],
  BURAK => q[Burak Gursoy],
  CEBJYRE => q[Glenn Fowler],
  CSJEWELL => q[Curtis Jewell],
  DOY => q[Jesse Luehrs],
  FLORA => q[Florian Ragwitz],
  JJNAPIORK => q[John Napiorkowski],
  JONASBN => q[jonasbn],
  LESPEA => q[Adam Lesperance],
  MARCEL => q[Marcel Gruenauer],
  MELO => q[Pedro Melo],
  RJBS => q[Ricardo SIGNES],
  SHARYANTO => q[Steven Haryanto],
  YANICK => q[Yanick Champoux],

=head1 SEE ALSO

L<Acme::CPANAuthors>

L<Task>

=cut
