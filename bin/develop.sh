#!/usr/bin/env bash

set -e
cd "${0%/*}"

cd ..

elmstatic watch &
http-server dist -c-1 &
wait
