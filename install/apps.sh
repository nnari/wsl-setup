#!/bin/bash
#
# Install applications
# Comment (with #) what should not be installed and add the applications you want to install.

source ./install/utils.sh	
keep_sudo_alive

# Update Ubuntu
sudo apt update
sudo apt upgrade -y

# Essential package
sudo apt -y install build-essential

# Git
sudo apt -y update
sudo apt -y install git

# Nodejs
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt install -y nodejs npm

# Nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt -y update && sudo apt -y install yarn

# Finish
e_success "Finished applications installation."
