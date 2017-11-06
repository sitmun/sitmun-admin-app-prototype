#!/bin/bash
# For local builds

# These variables are declared by travis automatically or
# in the .travis.yml. I have not found a way to make travis-ci
# share environment variables declared in one shell script with
# other shell scripts in the same build, so for local builds
# they need to be declared also here. 
# THIS IMPLIES THAT THIS LOCAL BUILD AND THE TRAVIS-CI BUILD
# MAY DIFFER. TO-DO: IF THIS BUILD STRUCTURE IS KEPT, A
# SCRIPT THAT BUILDS BOTH THIS SCRIPT AND .TRAVIS.YML FROM
# A SET OF COMMON VARIABLES WOULD BE REQUIRED.

# ArtifactID in gradle by default uses the name of the directory
# So using temp dirs with random names does not work (it can be
# changed in build.gradle, but for now I'll stick to the names of the
# repositories)
export TRAVIS_BUILD_DIR=${PWD}
#export PLUGIN1DIR=(/tmp/sitmun-pof-plugin-core)
#export PLUGIN2DIR=(/tmp/sitmun-pof-plugin-demo)
export PLUGIN1DIR=$(mktemp -d)
export PLUGIN2DIR=$(mktemp -d)


################################################

# Get the absolute path of this script
# so we can call it from anywhere and keep the
# other scripts with relative paths

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Using source makes all of them run in the same shell process
# so they can share functions and variables

source $DIR/install.sh
source $DIR/script.sh
source $DIR/after_script.sh
