## Project Information

PT Pascal v3.1 (c) 2011 Queen's University, (c) 1980 University of Toronto
January 2011

This directory contains the sources and build scripts for 
PT Pascal version 3.1 as of January 2011.

To make all passes of PT Pascal, use the command "make".

To test the PT Pascal you have made, run the tests in 
the test subdirectory using the ptc and pti command scripts 
in that directory.

For a more challenging test, run the example programs
in the examples subdirectory using the ptc and pti command
scripts in that directory.

## Test Suite Setup

### Adding Rspec the LOAD_PATH

Ruby needs to have the rspec added to the load_path in order for all the components to find each other. 
To do this, add the following to your .bash_profile or .bashrc:

```
export DRIFT_BASE="<project_path>"
export RUBYLIB="$DRIFT_BASE/diff-lcs-1.2.5/lib:$DRIFT_BASE/rspec-support-3.1.2/lib:$DRIFT_BASE/rspec-expectations-3.1.2/lib:$DRIFT_BASE/rspec-mocks-3.1.3/lib:$DRIFT_BASE/rspec-3.1.0/lib:$DRIFT_BASE/rspec-core-3.1.7/lib"
```
This adds all the libraries in the rspec folder to the path.
You may need to open a new terminal or run "source .bash_profile" or "source .bashrc" in order for the update to take effect.

### Running the tests

Tests are located in unit_tests/. Folders exist for testing each phase of the project.
The *_specs.rb files are rspec tests.

**Example:** /unit_test/scanner_tests/scanner_specs.rb are the specs for the scanner

To run a test file, you need the rspec test runner executable located in:
```
rspec/rspec-core-3.1.7/exe/rspec
```
(A more convenient executable will be created shortly)

To run a test file:
```
rspec/rspec-core-3.1.7/exe/rspec <path_to_test_file>
```





