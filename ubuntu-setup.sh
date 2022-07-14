#!/bin/bash

apt update && apt upgrade -y
# SDL2
apt install libsdl2-2.0-0 libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev -y
# GLFW, GLEW, GLM
apt install libglfw3-wayland libglfw3-dev libglew-dev libglm-dev -y
# Python
apt install python3-dev python3-pip python3-venv -y
sudo -u $SUDO_USER pip install django
# C/C++
apt install cmake clang clangd libclang-dev llvm llvm-dev build-essential git -y
# Nodejs
snap install node --classic
npm install npm@latest -g
npm install --global yarn
npm i -g live-server
npm install -g vscode-css-languageserver-bin
npm install -g vscode-html-languageserver-bin
npm i -g typescript-language-server; npm i -g typescript
npm i -g vscode-json-languageserver
npm i -g intelephense
npm i -g bash-language-server
npm i -g live-server
sudo -u $SUDO_USER pip install 'python-lsp-server[all]'
# Ruby
apt install ruby ruby-devel sqlite3 libsqlite3-dev -y
gem install solargraph bundler rails
# PHP/Laravel
apt install php php-curl php-pear php-gd php-dev php-zip php-mbstring php-mysql php-xml composer -y
sudo -u $SUDO_USER composer global require laravel/installer
echo 'export PATH=\"~/.composer/vendor/bin:$PATH\"'

# Java
apt install default-jdk openjdk-17-jdk ant maven maven-cache-cleanup -y
snap install netbeans --classic
snap install gradle --classic
# Random apps
apt install torbrowser-lanucher gnome-tweaks vim emacs htop neofetch steam gimp codeblocks -y

#Emacs setup
sudo -u $SUDO_USER git clone https://github.com/coolcoder93/CoolCoderEmacsSetup.git
mv init.el ~/.emacs.d/
rm README.md
touch ~/.emacs.d/custom.el
sudo -u $SUDO_USER systemctl --user enable --now emacs

echo "alias emacs=\"emacsclient -c -a \'emacs\'\" " >> ~/.bashrc
echo "alias emacsterm=\"emacsclient -nw\"" >> ~/.bashrc
echo 'export PATH=\"/usr/include:$PATH\"' >> ~/.bashrc

# TLP
apt install tlp tlp-rdw -y
systemctl enable --now tlp

# Remove unused programs
snap remove snap-store 
