#!/bin/sh

# shellcheck disable=SC2068
terraform \
  get \
  -update \
  ${@}
