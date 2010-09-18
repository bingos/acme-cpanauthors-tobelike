use strict;
use warnings;
use IO::Zlib;
use File::Fetch;
use File::Spec;
use IO::Zlib;
use CPAN::DistnameInfo;
use Getopt::Long;

my $version;
my $mirror = 'http://cpan.hexten.net/';

GetOptions('version=s', \$version, 'mirror=s', \$mirror);

die "No version specified with --version\n" unless $version and $version =~ /^[0-9\.]+$/;

my $mailrc = '01mailrc.txt.gz';
my $packages = '02packages.details.txt.gz';

my $location = '.';
 
my @files = ('authors/01mailrc.txt.gz','modules/02packages.details.txt.gz');
 
foreach my $file ( @files ) {
  my $url = join '', $mirror, $file;
 
  my $ff = File::Fetch->new( uri => $url );
  my $stat = $ff->fetch( to => $location );
  next unless $stat;
  warn "Downloaded '$stat'\n";
}

my %authors;
my $mrc = IO::Zlib->new( $mailrc, "rb" ) or die "$!\n";

while (<$mrc>) {
  chomp;
  my ( $alias, $pauseid, $long ) = split ' ', $_, 3;
  $long =~ s/^"//;
  $long =~ s/"$//;
  my ($name, $email) = $long =~ /(.*) <(.+)>$/;
  $authors{$pauseid} = $name;
}

close $mrc;

my %poe_authors;

my $fh = IO::Zlib->new( '02packages.details.txt.gz', "rb" ) or die "$!\n";
 
while (<$fh>) {
  last if /^\s*$/;
}
while (<$fh>) {
  chomp;
  my ($module,$version,$package_path) = split ' ', $_;
  next unless $module =~ /BeLike/;
  my $dist = CPAN::DistnameInfo->new( $package_path );
  next unless $dist;
  next if $poe_authors{ $dist->cpanid };
  $poe_authors{ $dist->cpanid } = $authors{ $dist->cpanid };
}
close $fh;

my @authors;

push @authors, qq{  $_ => q[$poe_authors{$_}],\n} for sort keys %poe_authors;

print <<HEADER;
package Acme::CPANAuthors::ToBeLike;

use strict;
use warnings;
use vars qw(\$VERSION);

\$VERSION = '$version';

use Acme::CPANAuthors::Register (
HEADER

print "$_" for @authors;

print <<MIDDLE;
);

q[We are POEsters];

__END__

=head1 NAME

Acme::CPANAuthors::ToBeLike - We are CPAN Authors to be like

=head1 SYNOPSIS

    use Acme::CPANAuthors;

    my \$authors  = Acme::CPANAuthors->new('ToBeLike');

    my \$number   = \$authors->count;
    my \@ids      = \$authors->id;
    my \@distros  = \$authors->distributions("BINGOS");
    my \$url      = \$authors->avatar_url("BINGOS");
    my \$kwalitee = \$authors->kwalitee("BINGOS");
    my \$name     = \$authors->name("BINGOS");

=head1 DESCRIPTION

This class provides a hash of emulatable CPAN Authors' PAUSE ID and name to the L<Acme::CPANAuthors> module.

It is currently statically generated information, I hope to make it dynamic in the future.

=head1 CONTAINED AUTHORS

MIDDLE

print "$_" for @authors;

print <<TAIL;

=head1 AUTHOR

Chris C<BinGOs> Williams <chris\@bingosnet.co.uk>

=head1 LICENSE

Copyright E<copy> Chris Williams

This module may be used, modified, and distributed under the same terms as Perl itself. Please see the license that came with your Perl distribution for details.

=head1 SEE ALSO

L<Acme::CPANAuthors>

L<POE>

=cut
TAIL

unlink $mailrc;
unlink $packages;