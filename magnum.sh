cmake -DCMAKE_PREFIX_PATH=$CMAKE_BUILDS_PREFIX -DCMAKE_INSTALL_PREFIX=$CMAKE_BUILDS_PREFIX \
      -DCMAKE_OSX_DEPLOYMENT_TARGET=10.11 \
      -DBUILD_STATIC=true -DBUILD_STATIC_PIC=true -DBUILD_PLUGINS_STATIC=true \
      -DWITH_ANYIMAGEIMPORTER=true \
      -DCMAKE_BUILD_TYPE=${DCS_BUILD_TYPE:-Debug} \
      -G"Ninja" ..
cmake -DWITH_SDL2APPLICATION=ON . || cmake -DWITH_SDL2APPLICATION=OFF .
cmake -DWITH_GLFWAPPLICATION=ON . || cmake -DWITH_GLFWAPPLICATION=OFF .
if [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    echo "Configuring with support for SDL2/ANGLE"
    cmake -DTARGET_GLES=TRUE -DTARGET_GLES2=FALSE .
fi
cmake --build . --target install
