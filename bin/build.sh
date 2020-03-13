#!/usr/bin/env bash

set -e
cd "${0%/*}"

cat query/repos.json \
    | curl -H "Authorization: bearer "${GITHUB_TOKEN} -X POST -d @- https://api.github.com/graphql \
    | cat <(printf -- "---\ndata: ") - <(printf -- "data2: ") ../_pages/repos.json <(printf -- "---\n") \
    > ../_pages/index.md

cd ..

cp -r node_modules/font-awesome/fonts _resources
sass _resources/style.scss _resources/style.css --style compressed --no-source-map

elmstatic
rm dist/rss.xml
rm elm.js
