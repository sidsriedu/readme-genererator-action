#!/bin/bash

echo "============================================"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

echo $(java -version 2>&1 | head -n 1)
ls
pwd

cd /usr/bin
ls
pwd
javac /usr/bin/TextToMDConvertor.java
java /usr/bin/TextToMDConvertor

git add -A && git commit -m "Update readme"
git push --set-upstream main origin

echo "============================================"