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
git filter-repo --path $2

gh repo create mlab-modules/$3  --disable-wiki --public

# Set the freshly created repo to the origin and push
# You'll need to have added your public key to your github account
git remote set-url $3 git@github.com:mlab-modules/${REPONAME}.git
git push -u $3 $1
