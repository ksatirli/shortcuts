#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/terraform-defaults.sh
. "$(dirname "${SELF}")/config/terraform-defaults.sh"

# shellcheck disable=SC2068
terraform \
  graph \
  -draw-cycles \
  ${@} |
  dot -Tpng > "${TERRAFORM_GRAPH_PATH}"
