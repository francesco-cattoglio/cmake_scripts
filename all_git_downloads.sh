#!/bin/bash

git clone https://github.com/francesco-cattoglio/imgui_for_dcs.git
mkdir ./imgui_for_dcs/build
git clone https://github.com/francesco-cattoglio/muparser_for_dcs.git
mkdir ./muparser_for_dcs/build
git clone https://github.com/mosra/magnum-integration.git
mkdir ./magnum-integration/build
git clone https://github.com/mosra/magnum.git
mkdir ./magnum/build
git clone https://github.com/mosra/magnum-plugins.git
mkdir ./magnum-plugins/build
git clone https://github.com/mosra/corrade.git
mkdir ./corrade/build
git clone https://github.com/glfw/glfw.git
mkdir ./glfw/build

echo "Now cloning DCS, which might require your github account to access"
git clone https://github.com/francesco-cattoglio/dcs.git

