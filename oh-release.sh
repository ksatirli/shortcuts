#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/oh-defaults.sh
. "$(dirname "${SELF}")/config/oh-defaults.sh"

release-it \
  --config="${RELEASEIT_CONFIG}" \
  ${@}
