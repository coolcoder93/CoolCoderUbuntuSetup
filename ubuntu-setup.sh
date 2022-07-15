#!/bin/bash

cd
apt update && apt upgrade -y
snap refresh
# SDL2
apt install libsdl2-2.0-0 libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev -y
# GLFW, GLEW, GLM
apt install libglfw3-wayland libglfw3-dev libglew-dev libglm-dev -y
# Python
apt install python3-dev python3-pip python3-venv -y
sudo -u $SUDO_USER pip install django
echo 'export PATH="/home/simon/.local/bin:$PATH"' | tee -a ~/.bashrc
# C/C++
apt install cmake clang clangd libclang-dev llvm llvm-dev build-essential git -y
# Nodejs
snap install node --classic
npm i --location=global npm@latest 
npm i --location=global npm@latest
npm i --location=global yarn
npm i --location=global live-server
npm i --location=global vscode-css-languageserver-bin
npm i --location=global vscode-html-languageserver-bin
npm i --location=global typescript-language-server; npm i -g typescript
npm i --location=global vscode-json-languageserver
npm i --location=global intelephense
npm i --location=global bash-language-server
npm i --location=global live-server
sudo -u $SUDO_USER pip install 'python-lsp-server[all]'
# Ruby
apt install ruby ruby-dev sqlite3 libsqlite3-dev -y
gem install solargraph bundler rails
# PHP/Laravel
apt install php php-curl php-pear php-gd php-dev php-zip php-mbstring php-mysql php-xml composer -y
sudo -u $SUDO_USER composer global require laravel/installer
echo 'export PATH="~/.composer/vendor/bin:$PATH"' | tee -a ~/.bashrc
# Java
apt install default-jdk openjdk-17-jdk ant maven maven-cache-cleanup -y
snap install netbeans --classic
snap install gradle --classic
# Random apps
apt install torbrowser-launcher gnome-tweaks vim emacs htop neofetch steam gimp codeblocks -y
snap install bitwarden
#Emacs setup
rm ~/.emacs
sudo -u $SUDO_USER git clone https://github.com/coolcoder93/CoolCoderEmacsSetup.git
cd CoolCoderEmacsSetup
mv init.el ~/.emacs.d/
cd .. && rm -rf CoolCoderEmacsSetup
touch ~/.emacs.d/custom.el
sudo -u $SUDO_USER systemctl --user enable --now emacs
echo "alias emacs=\"emacsclient -c -a 'emacs'\" " | tee -a ~/.bashrc
echo "alias emacsterm=\"emacsclient -nw\"" | tee -a ~/.bashrc
echo 'export PATH="/usr/include:$PATH"' | tee -a ~/.bashrc
# TLP
apt install tlp tlp-rdw -y
systemctl enable --now tlp
# Remove unused programs
snap remove snap-store 
apt autoremove -y
