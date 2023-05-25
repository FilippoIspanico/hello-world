#!/bin/bash
export STARTING_PATH=$(pwd)

sudo apt install libgtest-dev
sudo apt install cmake
sudo apt install g++

cd /usr/src/gtest 
sudo cmake 
sudo make
cd /usr/lib/x86_64-linux-gnu/
sudo cp libgtest.a libgtest_main.a /usr/lib

./sample1_unittest
