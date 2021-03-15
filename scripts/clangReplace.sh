#!/bin/bash

if [ -d "$(pwd)/../../../../prebuilts/clang/host/linux-x86/clang-stable/" ]; then
   rm -rf $(pwd)/../../../../prebuilts/clang/host/linux-x86/clang-stable/*
   git clone git://github.com/kdrag0n/proton-clang.git --depth 1 $(pwd)/../../../../prebuilts/clang/host/linux-x86/clang-stable
fi
