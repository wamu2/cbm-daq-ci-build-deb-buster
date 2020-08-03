#!/bin/bash
#
set -o pipefail
set -e
set -x

# define versions
#   gtest    1.10
export VTAG_GTEST=tags/release-1.10.0

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
