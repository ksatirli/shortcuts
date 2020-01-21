#!/bin/sh

# shellcheck disable=SC2068
terraform \
  graph \
    -draw-cycles \
    ${@} \
| dot -Tpng > graph.png
