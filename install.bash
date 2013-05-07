#!/usr/bin/env bash 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# install.bash Authored by Nathan Ross Powell.
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
sudo apt-get install    \
build-essential         \
libsdl1.2-dev           \
libsdl1.2debian         \
libsdl-image1.2-dev     \
libsdl-ttf2.0-dev       \
libsdl-mixer1.2-dev     \
mesa-common-dev         \
libglu1-mesa-dev        \
cmake

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Clang 3.1
sudo add-apt-repository ppa:eudoxos/llvm-3.1
sudo apt-get update
sudo apt-get install llvm-3.1
sudo apt-get install clang
