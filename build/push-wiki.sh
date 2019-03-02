#!/bin/sh

echo "Pushing to ccxt.wiki"
pwd

cd ../ccxt.wiki
cp ../wiki/* .
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git commit -a -m ${COMMIT_MESSAGE}
git remote remove origin
git remote add origin https://${GITHUB_TOKEN}@github.com/ccxt/ccxt.wiki.git
git push origin HEAD:master
