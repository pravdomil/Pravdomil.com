#!/usr/bin/env bash

# Stop if any command fails.
set -e

# Stop on unset variables.
set -u

# Be in project root.
cd "${0%/*}/.."

# Install dependencies from npm.
npm i
export PATH="$PWD/node_modules/.bin:$PATH"

# Clean directory.
dir=elm-stuff/develop-script
if [ -d $dir ]; then rm -r $dir; fi
mkdir -p $dir

# Start development server.
cat << EOF > $dir/index.html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title></title>
    <meta name="viewport" content="width=device-width" />
  </head>
  <body>
    <script src="elm.js"></script>
    <script>
    (function(){ var a = document.createElement("div"); document.body.appendChild(a); Elm.Main.init({ node: a, flags: { global: this, githubToken: localStorage.getItem("githubToken") } })})()
    </script>
  </body>
</html>
EOF
elm-serve src/Main.elm --open --root $dir --output $dir/elm.js
