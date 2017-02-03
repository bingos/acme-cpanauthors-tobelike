package Acme::CPANAuthors::ToBeLike;

#ABSTRACT: BeLike other CPAN Authors

use strict;
use warnings;

use Acme::CPANAuthors::Register (
  ABHIISNOT => q[Abhishek Shende],
  AMD => q[AMD OSRC (AMD Operating System Research Center)],
  BINGOS => q[Chris Williams],
  BURAK => q[Burak Gursoy],
  CADAVIS => q[Chad A Davis],
  CEBJYRE => q[Glenn Fowler],
  CHIM => q[Anton Gerasimov],
  CSJEWELL => q[Curtis Jewell],
  CSSON => q[Erik Carlsson],
  DAGOLDEN => q[David Golden],
  DBR => q[Daniel],
  DOY => q[Jesse Luehrs],
  DRAKO => q[Felix Bytow],
  EST => q[Eddy Eddy],
  FELLIOTT => q[Fitz Elliott],
  FIBO => q[Gianluca Casati],
  FLORA => q[Florian Ragwitz],
  GENEHACK => q[John SJ Anderson],
  GETTY => q[Torsten Raudssus],
  JJNAPIORK => q[John Napiorkowski],
  JONASBN => q[jonasbn],
  LESPEA => q[Adam Lesperance],
  LOGIE => q[Logan Bell],
  MARCEL => q[base64.tokyo],
  MELO => q[Pedro Melo],
  MPERRY => q[Matt Perry],
  MRUIZ => q[Miquel Ruiz Martin],
  MSCHOUT => q[Michael Schout],
  PHIPS => q[Mark Phillips],
  RJBS => q[Ricardo SIGNES],
  RJRAY => q[Randy J Ray],
  RSRCHBOY => q[Chris Weyl],
  SARTAK => q[Shawn M Moore],
  SCHWIGON => q[Steffen Schwigon],
  SHANTANU => q[Shantanu Bhadoria],
  SONGMU => q[Masayuki Matsuki],
  TOKUHIROM => q[Tokuhiro Matsuno''<xmp>],
  XAERXESS => q[Grzegorz Rozniecki],
  YANICK => q[Yanick Champoux],
  ZAKAME => q[Zak B. Elep],
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

It is generated from the indexed modules on CPAN C<02packages.details.txt> finding CPAN authors who have
a module indexed with C<BeLike> in the name.

=head1 CONTAINED AUTHORS

  ABHIISNOT => q[Abhishek Shende],
  AMD => q[AMD OSRC (AMD Operating System Research Center)],
  BINGOS => q[Chris Williams],
  BURAK => q[Burak Gursoy],
  CADAVIS => q[Chad A Davis],
  CEBJYRE => q[Glenn Fowler],
  CHIM => q[Anton Gerasimov],
  CSJEWELL => q[Curtis Jewell],
  CSSON => q[Erik Carlsson],
  DAGOLDEN => q[David Golden],
  DBR => q[Daniel],
  DOY => q[Jesse Luehrs],
  DRAKO => q[Felix Bytow],
  EST => q[Eddy Eddy],
  FELLIOTT => q[Fitz Elliott],
  FIBO => q[Gianluca Casati],
  FLORA => q[Florian Ragwitz],
  GENEHACK => q[John SJ Anderson],
  GETTY => q[Torsten Raudssus],
  JJNAPIORK => q[John Napiorkowski],
  JONASBN => q[jonasbn],
  LESPEA => q[Adam Lesperance],
  LOGIE => q[Logan Bell],
  MARCEL => q[base64.tokyo],
  MELO => q[Pedro Melo],
  MPERRY => q[Matt Perry],
  MRUIZ => q[Miquel Ruiz Martin],
  MSCHOUT => q[Michael Schout],
  PHIPS => q[Mark Phillips],
  RJBS => q[Ricardo SIGNES],
  RJRAY => q[Randy J Ray],
  RSRCHBOY => q[Chris Weyl],
  SARTAK => q[Shawn M Moore],
  SCHWIGON => q[Steffen Schwigon],
  SHANTANU => q[Shantanu Bhadoria],
  SONGMU => q[Masayuki Matsuki],
  TOKUHIROM => q[Tokuhiro Matsuno''<xmp>],
  XAERXESS => q[Grzegorz Rozniecki],
  YANICK => q[Yanick Champoux],
  ZAKAME => q[Zak B. Elep],

=head1 SEE ALSO

L<Acme::CPANAuthors>

L<Task>

=cut
