#!/bin/bash
#removing old builds
rm -rf build

# setting up clean build dir
mkdir -p build

#run wrapper for code analysis
/tools/build-wrapper-linux-x86/build-wrapper-linux-x86-64 --out-dir build/bw-outputs ./build.sh



# run bin
./build/bin/helloworld
