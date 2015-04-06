#!/bin/sh

# Reset each repo in order to successfully repo sync
echo Resetting each repo...

cd packages/apps/Camera2
git reset --hard && git clean -f -d
cd ../../../frameworks/base
git reset --hard && git clean -f -d
cd ../..
