#!/bin/bash
cd ..
mv zlib/ zlib-src/
#remove previous installation
rm -r zlib-build
rm -r zlib
mkdir zlib-build
mkdir zlib
cd zlib-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=../zlib \
../zlib-src
make -j 8
make install
cd ..
rm -r zlib-build
cp zlib-src/bk.cmake zlib

