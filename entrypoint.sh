#!/bin/bash

echo "============================================"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace


javac TextToMDConvertor.java
java TextToMDConvertor

git add -A && git commit -m "Update readme"
git push --set-upstream origin main

echo "============================================"