#!/bin/sh

docker \
  ps \
    --quiet \
    --filter "status=exited" \
    --filter "status=dead" \
| xargs "docker rm"
