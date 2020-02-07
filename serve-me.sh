#!/bin/sh

SELF=$(realpath "${0}")

# shellcheck source=./config/terraform-defaults.sh
. "$(dirname "${SELF}")/config/serveme-defaults.sh"

if [ "${1}" = "python2" ]
then
  ${SERVEME_PYTHON2_BIN} \
    -m "SimpleHTTPServer" \
    "${SERVEME_PORT}"

elif [ "${1}" = "python3" ]
then
  ${SERVEME_PYTHON3_BIN} \
    -m "http.server" \
    "${SERVEME_PORT}"

elif [ "${1}" = "php" ]
then
  ${SERVEME_PHP_BIN} \
    -S "127.0.0.1:${SERVEME_PORT}"

elif [ "${1}" = "ruby" ]
then
  echo ${SERVEME_RUBY_BIN} \
    -r "un" \
    -e "httpd" \
    . \
    --port "${SERVEME_PORT}" \
    -v

else
  echo "Serving with default Python"
  python \
    -m "SimpleHTTPServer" \
    "${SERVEME_PORT}"

fi
