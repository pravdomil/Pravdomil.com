#!/usr/bin/env bash

# To stop if something fails.
set -e

# To be always in project root.
cd "${0%/*}/.."

# To build index.md page.
bin/build\ index.md\ page.mjs

# To build Font Awesome and styles.
cp -r node_modules/font-awesome/fonts _resources
sass _resources/style.scss _resources/style.css --style compressed --no-source-map

# To build site.
elmstatic

# To cleanup after elmstatic.
rm dist/rss.xml
rm elm.js
