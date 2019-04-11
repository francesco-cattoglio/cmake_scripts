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

cd glfw/build
. ../../cmake_scripts/glfw.sh
cd ../../muparser_for_dcs/build
. ../../cmake_scripts/muparser.sh
cd ../../imgui_for_dcs/build
. ../../cmake_scripts/imgui.sh
cd ../../corrade/build
. ../../cmake_scripts/corrade.sh
cd ../../magnum/build
. ../../cmake_scripts/magnum.sh
cd ../../magnum-integration/build
. ../../cmake_scripts/magnum-integration.sh
cd ../../magnum-plugins/build
. ../../cmake_scripts/magnum-plugins.sh
cd ../../dcs/build
. ../../cmake_scripts/dcs.sh
cd ../..

echo "DCS project has been built in the dcs/build folder"

