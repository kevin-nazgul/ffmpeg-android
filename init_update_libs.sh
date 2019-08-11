#!/bin/bash

echo "============================================"
echo "Updating submodules"
git submodule update --init
echo "============================================"
echo "Updating libpng, expat and fribidi"
rm -rf libpng-1.6.21
rm -rf expat-*
rm -rf fribidi-0.19.7
rm -rf lame-*

tar -xf libpng-1.6.21.tar.xz
wget -O- http://downloads.sourceforge.net/project/expat/expat/2.1.0/expat-2.1.0.tar.gz | tar xz
tar -xf fribidi-0.19.7.tar.bz2
wget -O- http://sourceforge.net/projects/lame/files/lame/3.99/lame-3.99.5.tar.gz | tar xz
echo "============================================"
