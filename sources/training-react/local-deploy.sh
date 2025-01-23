#!/usr/bin/env bash
set -e

npm run build

rm -rf ../../static-assets/app
mkdir ../../static-assets/app
cp -R dist/* ../../static-assets/app/

git add ../../static-assets/app



