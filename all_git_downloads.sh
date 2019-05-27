#!/bin/bash

git clone https://github.com/glfw/glfw.git && mkdir ./glfw/build
git clone https://github.com/francesco-cattoglio/imgui_for_dcs.git && mkdir ./imgui_for_dcs/build
git clone https://github.com/francesco-cattoglio/muparser_for_dcs.git && mkdir ./muparser_for_dcs/build
git clone https://github.com/mosra/corrade.git && mkdir ./corrade/build
git clone https://github.com/mosra/magnum.git && mkdir ./magnum/build
git clone https://github.com/mosra/magnum-integration.git && mkdir ./magnum-integration/build
git clone https://github.com/mosra/magnum-plugins.git && mkdir ./magnum-plugins/build

echo "Now cloning DCS, which might require your github account to access"
git clone https://github.com/francesco-cattoglio/dcs.git && mkdir ./dcs/build

echo "cloning done. Remember to ``export CMAKE_BUILDS_PREFIX=/path/for/cmake/installations/'' before running the scripts"
echo "all the projects are built in Debug mode by default. ``export DCS_BUILD_TYPE=Release'' to build everything in Release instead"
echo "all the scripts require both cmake and ninja to build properly, make sure those are installed correctly before proceding"
echo "suggested manual build order is: glfw, muparser, imgui, corrade, magnum, magnum-integration, magnum-plugins and finally dcs"
