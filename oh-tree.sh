#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/oh-defaults.sh
. "$(dirname "${SELF}")/config/oh-defaults.sh"

tree \
  -a \
  -C \
  -I "${TREE_IGNORE}" \
  --dirsfirst "${@}" \
| \
less \
  --quit-if-one-screen \
  --LONG-PROMPT \
  --LINE-NUMBERS \
  --RAW-CONTROL-CHARS \
  --no-init
