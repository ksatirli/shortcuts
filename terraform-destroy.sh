#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/terraform-defaults.sh
. "$(dirname "${SELF}")/config/terraform-defaults.sh"

# shellcheck disable=SC2068
terraform \
  destroy \
  -lock=true \
  -lock-timeout="${TERRAFORM_LOCK_TIMEOUT}" \
  -input=true \
  -parallelism="${TERRAFORM_PARALLELISM}" \
  -refresh=true \
  "${TERRAFORM_PLAN_PATH}" \
  ${@}
