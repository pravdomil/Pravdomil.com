#!/usr/bin/env bash

# To stop if any command fails.
set -e

# To stop on unset variables.
set -u

# To show what we are doing.
set -x

# To be always in project root.
cd "${0%/*}/.."

# To have npm dependencies from.
npm i -g elm elmstatic sass gh-pages

# To actually build the site.
bin/build.sh

# To publish site to GitHub pages.
gh-pages \
  -d dist \
  -u "ci <ci@pravdomil.com>" \
  -r "https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"
