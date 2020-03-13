#!/bin/sh

shfmt \
  -l \
  -w \
  -d \
  -s \
  -i 2 \
  -ci \
  -sr \
  "${@}"
