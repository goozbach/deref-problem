# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Coraid.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 6;
BEGIN { use_ok('App::Foo') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $obj = App::Foo->new();
isa_ok($obj, 'App::Foo');
can_ok('App::Foo', 'getter');
can_ok('App::Foo', 'setter');
can_ok('App::Foo', 'bat');
can_ok('App::Foo', 'cat');
