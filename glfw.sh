cmake -DCMAKE_PREFIX_PATH=$CMAKE_INSTALL_PREFIX -DCMAKE_INSTALL_PREFIX=$CMAKE_INSTALL_PREFIX -DCMAKE_BUILD_TYPE=Release ..
make -j4
make install

