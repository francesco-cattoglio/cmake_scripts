cmake -DCMAKE_INSTALL_PREFIX=$CMAKE_INSTALL_PREFIX \
       -DIMGUI_DIR=/Users/franz/Documents/DCS_devel/imgui_for_dcs/ \
       -DBUILD_STATIC=true -DBUILD_STATIC_PIC=true -DBUILD_PLUGINS_STATIC=true -DWITH_IMGUI=true -DCMAKE_BUILD_TYPE=Release ..

make -j4
make install
