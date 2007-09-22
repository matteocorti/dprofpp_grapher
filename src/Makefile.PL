# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

##############################################################################
# Define metadata (we read it from the binary)

name     'dprofpp_grapher';
all_from 'dprofpp_grapher';

##############################################################################
# Specific dependencies

requires 'Class::Inspector' => 0;
requires 'Data::Dumper'     => 0;
requires 'English'          => 0;
requires 'File::Slurp'      => 0;
requires 'Getopt::Long'     => 0;
requires 'GraphViz'         => 0;
requires 'IPC::Open3'       => 0;
requires 'List::MoreUtils'  => 0;

install_script  'dprofpp_grapher';

auto_install;

WriteAll;
