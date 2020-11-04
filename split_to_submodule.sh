#!/bin/bash

# https://gist.github.com/robwierzbowski/5430952/
# Create and push to a new github repo from the command line.
# Grabs sensible defaults from the containing folder and `.gitconfig`.
# Refinements welcome.
# $1 module full name
# $2 module path
# $3 module repository name

## Usage example
#
#
#  ./split_to_submodule.sh BRIDGEADC01A  ADC/BRIDGEADC01A/ BRIDGEADC01
#
# Gather constant vars
#CURRENTDIR=${PWD##*/}
GITHUBUSER=$(git config github.user)
REPONAME=$3

git branch $1
git filter-branch -f --prune-empty --subdirectory-filter $2  $1

# Curl some json to the github API oh damn we so fancy
curl -u ${USER:-${GITHUBUSER}} https://api.github.com/orgs/mlab-modules/repos -d "{\"name\": \"${REPONAME:-${CURRENTDIR}}\", \"description\": \"${DESCRIPTION}\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}"

# Set the freshly created repo to the origin and push
# You'll need to have added your public key to your github account
git remote set-url origin git@github.com:mlab-modules/${REPONAME}.git
git push -u origin $1
