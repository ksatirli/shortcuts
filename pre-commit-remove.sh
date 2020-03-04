#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/pre-commit-defaults.sh
. "$(dirname "${SELF}")/config/pre-commit-defaults.sh"

pre-commit \
  uninstall \
  --config "${PRECOMMIT_CONFIG}" &&
  pre-commit \
    clean \
    --config "${PRECOMMIT_CONFIG}" &&
  pre-commit \
    gc \
    --config "${PRECOMMIT_CONFIG}"
