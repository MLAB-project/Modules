#!/bin/bash

# https://cli.github.com/manual/gh_repo_create
# Create and push to a new github repo from the command line.
# Grabs sensible defaults from the containing folder and `.gitconfig`.
#
# $1 module full name
# $2 module path
# $3 module repository name

## Usage example
#
#
#  ./split_to_submodule.sh BRIDGEADC01A  ADC/BRIDGEADC01A/ BRIDGEADC01
#

git branch $1
git checkout $1
git-filter-repo --force --subdirectory-filter $2 --refs $1

gh repo create mlab-modules/$3  --disable-wiki --public

# Set the freshly created repo to the origin and push
# You'll need to have added your public key to your github account
git remote add $3 git@github.com:mlab-modules/$3.git
git push -u $3 $1

git checkout -f master

rm -r $2
git add $2
git submodule add -b $1 git@github.com:mlab-modules/$3.git $2
git add $2 .gitmodules
git commit -m"Removing $1 modules splitted to separate repositories."
