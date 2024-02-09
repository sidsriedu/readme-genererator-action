#!/bin/bash

echo "============================================"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

echo "============================================"
pwd
ls
echo "============================================"

javac TextToMDConvertor.java
java TextToMDConvertor

echo "============================================"
pwd
ls
echo "============================================"

git add -A && git commit -m "Update readme"
git push --set-upstream main origin

echo "============================================"