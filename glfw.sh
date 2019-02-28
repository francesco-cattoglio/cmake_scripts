cmake -G "MinGW Makefiles" -DCMAKE_PREFIX_PATH="$env:CMAKE_BUILDS_PREFIX" -DCMAKE_INSTALL_PREFIX="$env:CMAKE_BUILDS_PREFIX" `
    -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target install -- -j4
