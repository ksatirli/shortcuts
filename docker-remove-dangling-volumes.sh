#!/bin/sh

docker \
  volume \
  ls \
  --quiet \
  --filter "dangling=true" |
  xargs "docker volume rm"
