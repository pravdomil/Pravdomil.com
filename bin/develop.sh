#!/usr/bin/env bash

# To stop if any command fails.
set -e

# To stop on unset variables.
set -u

# To be always in project root.
cd "${0%/*}/.."

# To check if site is built.
[ -f dist/style.css ] || (echo "Run build script first." && exit 1)

# To start http server, build the site and watch for file changes.
elmstatic watch &
http-server dist -c-1 &
wait
