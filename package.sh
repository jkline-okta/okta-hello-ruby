#!/bin/bash

set -e # bail on first fail

THIS=$(basename -- $0)
DIR=$(dirname -- $(readlink --canonicalize --no-newline -- $0))

cd $DIR

# Make gem
gemout=$(gem1.9 build okta_hello.gemspec)

# What file and version of gem was just build?
gemfile=$(echo "$gemout" | awk '/File:/ { print $2 }' )

# Interpolate the rpm spec for the new gem
gem2rpm -t rubygem19-okta_hello.spec.template -o rubygem19-okta_hello.spec $gemfile

# rpmbuild needs to find the gem
cp $gemfile $HOME/rpmbuild/SOURCES/

# Boom!
rpmbuild -ba rubygem19-okta_hello.spec


