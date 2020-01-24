#!/bin/sh

git \
  log \
    --all \
    --graph \
    --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' \
    --abbrev-commit \
    --date="relative"
