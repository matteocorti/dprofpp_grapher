# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

##############################################################################
# Define metadata (we read it from the binary)

name              'dprofpp_grapher';
abstract_from     'dprofpp_grapher';
author_from       'dprofpp_grapher';
version_from      'dprofpp_grapher';
license_from      'dprofpp_grapher';
perl_version_from 'dprofpp_grapher';

##############################################################################
# Specific dependencies

require Data::Dumper => 0;
require English      => 0;
require File::Slurp  => 0;
require Getopt::Long => 0;
require GraphViz     => 0;
require IPC::Open3   => 0;

install_script  'dprofpp_grapher';

auto_install;

WriteAll;
