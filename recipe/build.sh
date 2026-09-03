#!/usr/bin/env bash

mkdir build && cd build

cmake ${CMAKE_ARGS} -LAH \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
    ../source

cmake --build . --target install -j${CPU_COUNT}
