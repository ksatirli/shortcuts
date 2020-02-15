#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/oh-defaults.sh
. "$(dirname "${SELF}")/config/oh-defaults.sh"

# shellcheck disable=SC2068
release-it \
  --config="${RELEASEIT_CONFIG}" \
  ${@}
