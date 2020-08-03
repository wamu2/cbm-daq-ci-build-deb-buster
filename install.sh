#!/bin/bash
#
set -o pipefail
set -e
set -x

# define versions
#   gtest    1.7          (intentionally not latest!)
export VTAG_GTEST=tags/release-1.7.0

# OS version info
grep VERSION /etc/os-release

# install googletest
cd /tmp
git clone https://github.com/google/googletest.git
cd googletest
git checkout $VTAG_GTEST
mkdir build
cd build
cmake ..
make
make install

# drop tmp files
cd ..
rm -rf /tmp/*
