#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/terraform-defaults.sh
. "$(dirname "${SELF}")/config/terraform-defaults.sh"

# shellcheck disable=SC2068
terraform-docs \
  markdown table \
    --indent ${TERRAFORM_DOCS_INDENT} \
    --no-escape \
    --no-required \
    --sort-by-required \
    ${@}
