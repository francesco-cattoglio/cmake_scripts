cmake -G "MinGW Makefiles" -DCMAKE_PREFIX_PATH="$env:CMAKE_BUILDS_PREFIX" -DCMAKE_INSTALL_PREFIX="$env:CMAKE_BUILDS_PREFIX" `
    -DBUILD_STATIC=true -DBUILD_STATIC_PIC=true -DWITH_ANYIMAGEIMPORTER=true -DBUILD_PLUGINS_STATIC=true `
	-DWITH_GLFWAPPLICATION=true -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target install -- -j4
