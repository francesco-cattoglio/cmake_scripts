cmake -DCMAKE_PREFIX_PATH=$CMAKE_BUILDS_PREFIX -DCMAKE_INSTALL_PREFIX=$CMAKE_BUILDS_PREFIX \
       -DCMAKE_OSX_DEPLOYMENT_TARGET=10.11 \
       -DIMGUI_DIR=$IMGUI_FOR_DCS_PATH \
       -DCMAKE_BUILD_TYPE=${DCS_BUILD_TYPE:-Debug} \
       -G"Ninja" ..
if [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    echo "Configuring with support for SDL2/ANGLE"
    cmake -DDCS_WITH_SDL2=TRUE -DDCS_WITH_GLES3=TRUE .
fi
cmake --build .
