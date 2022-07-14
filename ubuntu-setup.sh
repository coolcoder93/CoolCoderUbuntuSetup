#!/bin/bash

apt update && apt upgrade -y
# SDL2
apt install libsdl2-2.0-0 libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev -y
# GLFW, GLEW, GLM
apt install libglfw3-wayland libglfw3-dev libglew-dev libglm-dev -y
# Python
apt install python3-dev python3-pip python3-venv -y
# C/C++
apt install cmake  -y
# Nodejs
snap install node --classic
# Ruby
apt install ruby ruby-devel
gem install solargraph bundler rails
# PHP/Laravel
apt install php php-curl php-pear php-gd php-dev php-zip php-mbstring php-mysql php-xml composer -y
TODO: add sudo thing :composer global require laravel/installer

# Remove unused programs
snap remove snap-store 
