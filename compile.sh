#!/bin/bash

set -e

OUTPUT="dawn"

SOURCES=(
    "src/main.cpp"
    "src/core/engine.cpp"
    "src/utils/network.cpp"
)

CXXFLAGS="-std=c++20 -Isrc -Wall -Wextra"
LDFLAGS="-lcurl"

if g++ $CXXFLAGS "${SOURCES[@]}" -o "$OUTPUT" $LDFLAGS;
{
    echo "Compilation successful: ./$OUTPUT"
}
else
{
    echo "Compilation failed."
    exit 1
}
