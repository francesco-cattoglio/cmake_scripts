#!/bin/bash

[[ "$0" != "$BASH_SOURCE" ]] && sourced=1 || sourced=0

if [[ $sourced -eq 1 ]]; then
    ret=return
else
    ret=exit
fi

if env | grep -q ^CMAKE_BUILDS_PREFIX=
then
    echo "Starting building process, this will take a few mins."
else
    echo "CMAKE_BUILDS_PREFIX was not set. Please set it via ``export CMAKE_BUILDS_PREFIX=/path/for/cmake/installations/'' before running this script"
    $ret
fi

echo "Building GLFW"
cd glfw/build
. ../../cmake_scripts/glfw.sh
echo "Building MuParser"
cd ../../muparser_for_dcs/build
. ../../cmake_scripts/muparser.sh
echo "Building IMGUI"
cd ../../imgui_for_dcs/build
. ../../cmake_scripts/imgui.sh
echo "Building Corrade"
cd ../../corrade/build
. ../../cmake_scripts/corrade.sh
echo "Building Magnum"
cd ../../magnum/build
. ../../cmake_scripts/magnum.sh
echo "Building Magnum-Integration"
cd ../../magnum-integration/build
. ../../cmake_scripts/magnum-integration.sh
echo "Building Magnum-Plugins"
cd ../../magnum-plugins/build
. ../../cmake_scripts/magnum-plugins.sh
echo "Building DCS"
cd ../../dcs/build
. ../../cmake_scripts/dcs.sh
cd ../..

echo "DCS project has been built in the dcs/build folder"

