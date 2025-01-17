#!/bin/bash

. abi_settings.sh $1 $2 $3

pushd libpng

make clean

./configure \
  --with-pic \
  --with-sysroot="$NDK_SYSROOT" \
  --host="$NDK_TOOLCHAIN_ABI" \
  --enable-static \
  --disable-shared \
  --prefix="${TOOLCHAIN_PREFIX}" \
  --disable-shared || exit 1

make -j${NUMBER_OF_CORES} install || exit 1

popd
