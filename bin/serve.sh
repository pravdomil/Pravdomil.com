#!/usr/bin/env bash

set -e
cd "${0%/*}"

cd ..

http-server dist -c-1
