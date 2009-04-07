use inc::Module::Install;

name     'Olson-Abbreviations';
all_from 'lib/Olson/Abbreviations.pm';
author   'Evan Carroll <me+cpan@evancarroll.com>';
license  'perl';

requires 'Moose';
requires 'MooseX::AttributeHelpers';
requires 'MooseX::ClassAttribute';

build_requires 'Test::More';

auto_install;

WriteAll;
