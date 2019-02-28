cmake -G "MinGW Makefiles" -DCMAKE_PREFIX_PATH="$env:CMAKE_BUILDS_PREFIX" -DCMAKE_INSTALL_PREFIX="$env:CMAKE_BUILDS_PREFIX" `
      -DBUILD_STATIC=true -DBUILD_STATIC_PIC=true -DWITH_IMGUI=true -DCMAKE_BUILD_TYPE=Release `
      -DIMGUI_DIR="$env:IMGUI_FOR_DCS_PATH" ..
cmake --build . --target install -- -j4
