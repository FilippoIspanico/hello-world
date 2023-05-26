#!/bin/bash
export STARTING_PATH=$(pwd)

sudo apt install libgtest-dev
sudo apt install cmake
sudo apt install g++

cd /usr/src/gtest 
sudo cmake CMakeLists.txt
sudo make
ls
 
