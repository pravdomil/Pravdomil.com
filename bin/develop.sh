#!/usr/bin/env bash

# Stop if any command fails.
set -e

# Stop on unset variables.
set -u

# Be in project root.
cd "${0%/*}/.."

# Build application first.
source bin/build.sh

# Start development server.
cp "src/_dist/static/VERSION/main.js" "dist/static/$VERSION/main.js"
sed -i "" "s/<head>/<head><script src=\"static\/$VERSION\/elm.js\"><\/script>/" dist/index.html
elm-serve src/Main.elm --open --root dist --output "dist/static/$VERSION/elm.js"
