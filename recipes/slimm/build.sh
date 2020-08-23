#!/bin/bash

mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DSLIMM_NATIVE_BUILD=OFF \
    ..
make
make install

# TODO: Remove lines below if source-based build works on macOS.
#mkdir -p "${PREFIX}/bin"
#cp bin/* "${PREFIX}/bin/"
#cp -r share/* "${PREFIX}/share/"
