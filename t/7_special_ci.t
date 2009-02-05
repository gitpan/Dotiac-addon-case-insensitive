use Test::More tests=>18;
chdir "t";
no warnings;

require Dtest;
use warnings;
use strict;

dtest("special_ci.html","ABABABABA\n",{data=>"B"});
dtest("special_ci2.html","ACACACACA\n",{data=>{foo=>"C"}});
dtest("special_ci2.html","ADADADADA\n",{data=>FOO->new()});

package FOO;

sub new {
	bless {},shift;
}

sub foo {
	return "D";
}
