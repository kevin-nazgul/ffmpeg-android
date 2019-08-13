#!/bin/bash

echo "============================================"
echo "Updating submodules"
git submodule update --init
echo "============================================"
echo "Updating lame"
rm -rf lame-*

wget -O- http://sourceforge.net/projects/lame/files/lame/3.99/lame-3.99.5.tar.gz | tar xz
echo "============================================"
