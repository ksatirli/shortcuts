#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/pre-commit-defaults.sh
. "$(dirname "${SELF}")/config/pre-commit-defaults.sh"

# shellcheck disable=SC2068
pre-commit \
    install \
        --config "${PRECOMMIT_CONFIG}" \
        ${@}
