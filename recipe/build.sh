#!/bin/bash

export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:PKG_CONFIG_PATH"
export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
