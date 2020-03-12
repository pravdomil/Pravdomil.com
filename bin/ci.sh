#!/usr/bin/env bash

set -ex
cd "${0%/*}"

npm i -g elm elmstatic sass gh-pages

./build.sh
gh-pages -u "ci <ci@pravdomil.com>" -d ../dist -r "https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"
