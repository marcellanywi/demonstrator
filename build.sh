#!/bin/bash
mkdir -p build/bin
g++ -Wall -o build/bin/helloworld src/helloworld.cpp

RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi
