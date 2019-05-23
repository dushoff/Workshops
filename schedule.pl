use 5.10.0;
use strict;

my $p = shift @ARGV;

undef $/;

my $f =<>;

$f =~ s/\n  - /\n\n/g;
## $f =~ s/.* - \*\*Track/\n$&/g;
foreach (split /\n{2,}/, $f){
	say "$_\n" if /^##/;
	say "$_\n" if /$p/i;
}
