#!/bin/bash

export PATH=$PATH:/c/msys64/usr/bin:/c/msys64/mingw64/bin

pacman --noconfirm -Sy wget

wget -O /c/pioneer-libs.zip "https://ci.appveyor.com/api/projects/pcercuei/pioneer-libs/artifacts/pioneer-deps.zip?branch=master&job=Environment%3A%20PLATFORM%3Dx64%2C%20CMAKE_EXTRA_ARGS%3D-DCMAKE_GENERATOR_TOOLSET%3D%22host%3Dx64%22"

cd /c/Program\ Files/
unzip /c/pioneer-deps.zip

pacman --noconfirm -Sy \
	mingw-w64-x86_64-cmake \
	mingw-w64-x86_64-SDL2 \
	mingw-w64-x86_64-SDL2_image \
	mingw-w64-x86_64-assimp \
	mingw-w64-x86_64-freetype \
	mingw-w64-x86_64-glew \
	mingw-w64-x86_64-lua \
	mingw-w64-x86_64-libvorbis \
	mingw-w64-x86_64-libpng \
	mingw-w64-x86_64-libsigc++
