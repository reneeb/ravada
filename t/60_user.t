use warnings;
use strict;

use Test::More;
use Test::SQL::Data;

use_ok('Ravada');
use_ok('Ravada::Request');

my $test = Test::SQL::Data->new(config => 't/etc/ravada.conf');

my $ravada = Ravada->new(connector => $test->connector);

my $user = $ravada->search_user('root');

ok($user);
ok($user->is_admin);

done_testing();
