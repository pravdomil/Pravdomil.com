#!/usr/bin/env bash

# Stop if any command fails.
set -e

# Stop on unset variables.
set -u

# Be in project root.
cd "${0%/*}/.."

# Install dependencies from npm.
npm i

# Clean directory.
dir=dist
if [ -d $dir ]; then rm -r $dir; fi
mkdir -p $dir

# Compile.
elm make src/Main.elm --output $dir/temp.js --optimize
elm-ffi $dir/temp.js
elm-minify $dir/temp.js
output=$(<$dir/temp.js)
rm $dir/temp.js

cat << EOF > $dir/index.html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title></title>
    <meta name="viewport" content="width=device-width" />
  </head>
  <body>
    <script>$output</script>
    <script>
    (function(){ var a = document.createElement("div"); document.body.appendChild(a); Elm.Main.init({ node: a, flags: { global: this, githubToken: localStorage.getItem("githubToken") } })})()
    </script>
  </body>
</html>
EOF
