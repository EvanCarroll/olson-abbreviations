#!/usr/bin/env perl
use strict;
use warnings;

use feature ':5.10';
use DataExtract::FixedWidth;

my @lines = <DATA>;

my $defw = DataExtract::FixedWidth->new({ heuristic => \@lines, cols => [qw/ abbr name offset/], header_row => undef });

use XXX;
my %db;
foreach ( @lines ) {
	my $tuple = $defw->parse_hash( $_ );
	$db{ delete $tuple->{abbr} } = $tuple;
}

YYY \%db;

__DATA__
Z  Zulu Time Zone       0 
Y  Yankee Time Zone     -12
X  X-ray Time Zone      -11
W  Whiskey Time Zone    -10
V  Victor Time Zone     -9 
U  Uniform Time Zone    -8 
T  Tango Time Zone      -7 
S  Sierra Time Zone     -6 
R  Romeo Time Zone      -5 
Q  Quebec Time Zone     -4 
P  Papa Time Zone       -3 
O  Oscar Time Zone      -2 
N  November Time Zone   -1 
A  Alpha Time Zone      +1 
B  Bravo Time Zone      +2 
C  Charlie Time Zone    +3 
D  Delta Time Zone      +4 
E  Echo Time Zone       +5 
F  Foxtrot Time Zone    +6 
G  Golf Time Zone       +7 
H  Hotel Time Zone      +8 
I  India Time Zone      +9 
K  Kilo Time Zone       +10
L  Lima Time Zone       +11
M  Mike Time Zone       +12
