use inc::Module::Install;

name     'Olson-Abbreviations';
all_from 'lib/Olson/Abbreviations.pm';
author   'Evan Carroll <me+cpan@evancarroll.com>';
license  'perl';

requires 'Moose';
requires 'MooseX::AttributeHelpers';
requires 'MooseX::ClassAttribute';

test_requires 'Test::More';

repository 'git://github.com/EvanCarroll/olson-abbreviations.git';

auto_install;

WriteAll;
