cmake -DCMAKE_PREFIX_PATH=$CMAKE_BUILDS_PREFIX -DCMAKE_INSTALL_PREFIX=$CMAKE_BUILDS_PREFIX \
      -DCMAKE_OSX_DEPLOYMENT_TARGET=10.11\
      -DBUILD_STATIC=true -DBUILD_STATIC_PIC=true -DWITH_IMGUI=true -DCMAKE_BUILD_TYPE=Release \
      -DIMGUI_DIR=$IMGUI_FOR_DCS_PATH\
      -G"Ninja" ..
cmake --build . --target install 
