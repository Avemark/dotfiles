#!/usr/bin/env bash

url='http://a1.phobos.apple.com/us/r1000/000/Features/atv/AutumnResources/videos/entries.json'

http $url \
  | jq -r '.[].assets[].url' \
  > .aria.urls

aria2c -x10 -i .aria.urls \
  --auto-file-renaming=false \
  --conditional-get=true \
  --allow-overwrite=true \
  --save-session=.aria.session \
  --force-save=true
