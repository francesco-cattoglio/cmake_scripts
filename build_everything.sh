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

if [[ -n $DCS_BUILD_TYPE ]]; then
    echo "CMake build type will be set to $DCS_BUILD_TYPE"
else
    echo "Building as Debug, since DCS_BUILD_TYPE variable was empty"
fi

echo "Building GLFW"
cd glfw/build
rm -f CMakeCache.txt
. ../../cmake_scripts/glfw.sh

echo "Building MuParser"
cd ../../muparser_for_dcs/build
rm -f CMakeCache.txt
. ../../cmake_scripts/muparser.sh

echo "Building IMGUI"
cd ../../imgui_for_dcs/build
rm -f CMakeCache.txt
. ../../cmake_scripts/imgui.sh

echo "Building Corrade"
cd ../../corrade/build
rm -f CMakeCache.txt
. ../../cmake_scripts/corrade.sh

echo "Building Magnum"
cd ../../magnum/build
rm -f CMakeCache.txt
. ../../cmake_scripts/magnum.sh

echo "Building Magnum-Integration"
cd ../../magnum-integration/build
rm -f CMakeCache.txt
. ../../cmake_scripts/magnum-integration.sh

echo "Building Magnum-Plugins"
cd ../../magnum-plugins/build
rm -f CMakeCache.txt
. ../../cmake_scripts/magnum-plugins.sh

echo "Building DCS"
cd ../../dcs/build
rm -f CMakeCache.txt
. ../../cmake_scripts/dcs.sh
cd ../..

echo "DCS project has been built in the dcs/build folder"

