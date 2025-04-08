#!/bin/bash

echo ">>> DEBUGGING START >>>"
set -x
ls -lh $PREFIX/lib/pkgconfig
ls -lh $PREFIX/*/pkgconfig
echo "<<< DEBUGGING END <<<"

#export CAIRO_CFLAGS="-I${PREFIX}/include/cairo"
#export CAIRO_LIBS="-lcairo -lpng -lz"
#export PKG_CONFIG_PATH="${PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}"
export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
