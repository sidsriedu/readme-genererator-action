#!/bin/bash

echo "============================================"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

javac /usr/bin/TextToMDConvertor.java
java /usr/bin/TextToMDConvertor

echo "============================================"
cd /usr/bin
pwd
ls
echo "============================================"

git add -A && git commit -m "Update readme"
git push --set-upstream main origin

echo "============================================"