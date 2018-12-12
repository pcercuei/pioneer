#!/c/msys64/usr/bin/bash -l

export PATH=/mingw64/bin:$PATH

# Exit immediately upon error
set -e

# Echo the commands
set +v

mkdir -p /c/projects/pioneer/build32
cd /c/projects/pioneer/build32

/mingw64/bin/cmake -G 'Unix Makefiles' \
	-DCMAKE_INSTALL_PREFIX="/c/Program Files/Pioneer" \
	-DPIONEER_DATA_DIR="/c/Program Files/Pioneer/data" \
	-DCMAKE_BUILD_TYPE:STRING=Release \
	-DGIT_EXECUTABLE=/c/Program\\ Files/Git/cmd/git.exe \
	-DPKG_CONFIG_EXECUTABLE=/mingw32/bin/pkg-config.exe \
	-DCMAKE_C_COMPILER=/mingw32/bin/i686-w64-mingw32-gcc.exe \
	-DCMAKE_CXX_COMPILER=/mingw32/bin/i686-w64-mingw32-g++.exe \
	-DUSE_SYSTEM_LIBGLEW=ON \
	-DUSE_SYSTEM_LIBLUA=OFF \
	/c/projects/pioneer

/mingw32/bin/cmake --build . --target install

mkdir /c/install32
mv /c/Program\ Files/Pioneer /c/install32/

mkdir -p /c/projects/pioneer/build64
cd /c/projects/pioneer/build64

/mingw64/bin/cmake -G 'Unix Makefiles' \
	-DCMAKE_INSTALL_PREFIX="/c/Program Files/Pioneer" \
	-DPIONEER_DATA_DIR="/c/Program Files/Pioneer/data" \
	-DCMAKE_BUILD_TYPE:STRING=Release \
	-DGIT_EXECUTABLE=/c/Program\\ Files/Git/cmd/git.exe \
	-DPKG_CONFIG_EXECUTABLE=/mingw64/bin/pkg-config.exe \
	-DCMAKE_C_COMPILER=/mingw64/bin/x86_64-w64-mingw32-gcc.exe \
	-DCMAKE_CXX_COMPILER=/mingw64/bin/x86_64-w64-mingw32-g++.exe \
	-DUSE_SYSTEM_LIBGLEW=ON \
	-DUSE_SYSTEM_LIBLUA=OFF \
	/c/projects/pioneer

/mingw64/bin/cmake --build . --target install

mkdir /c/install64
mv /c/Program\ Files/Pioneer /c/install64/
