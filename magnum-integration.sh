cmake -DCMAKE_PREFIX_PATH=$CMAKE_INSTALL_PREFIX -DCMAKE_INSTALL_PREFIX=$CMAKE_INSTALL_PREFIX \
       -DIMGUI_DIR=$IMGUI_FOR_DCS_PATH \
       -DBUILD_STATIC=true -DBUILD_STATIC_PIC=true -DBUILD_PLUGINS_STATIC=true -DWITH_IMGUI=true -DCMAKE_BUILD_TYPE=Release ..

make -j4
make install
