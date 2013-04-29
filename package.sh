#!/bin/bash

set -e # bail on first fail

THIS=$(basename -- $0)
DIR=$(dirname -- $(readlink --canonicalize --no-newline -- $0))

cd $DIR

gemspec=okta_hello.gemspec
rpmspec_template=rubygem19-okta_hello.spec.in
rpmspec=rubygem19-okta_hello.spec

# This is where rubygem19-json and rubygem19-bigdecimal are installed, for
# example.
export GEM_HOME="/usr/share/gems1.9"

# Make gem
gemout=$(gem1.9 build $gemspec)

# What file and version of gem was just build?
gemfile=$(echo "$gemout" | awk '/File:/ { print $2 }' )

# Interpolate the rpm spec for the new gem
gem2rpm -t $rpmspec_template -o $rpmspec $gemfile

# rpmbuild needs to find the gem
cp $gemfile $HOME/rpmbuild/SOURCES/
cp $rpmspec_template $HOME/rpmbuild/SOURCES/

# Boom!
rpmbuild -ba $rpmspec


