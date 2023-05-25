#!/bin/bash

sudo apt install libgtest-dev
sudo apt install cmake
sudo apt install g++
cd /usr/src/gtest && sudo cmake CMakeLists.txt && sudo make
cd /usr/lib/x86_64-linux-gnu/
sudo cp libgtest.a libgtest_main.a /usr/lib
mkdir test
touch calc.hpp
touch calc.cpp
touch calc_test.cpp
g++ -o calc_test calc_test.cpp calc.cpp -lgtest -lpthread
./calc_test
