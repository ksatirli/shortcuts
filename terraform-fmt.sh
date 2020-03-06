#!/bin/sh

# shellcheck disable=SC2068
terraform \
  fmt \
  -diff \
  -check \
  -recursive \
  ${@}
