#!/bin/bash
# ask user for their name

# update packages
sudo apt update && apt upgrade -y

# install git and curl
sudo apt install git curl -y

# create credentials for git

# multi-user installation for Nix
sh <(curl -L https://nixos.org/nix/install) --daemon

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update
nix-shell '<home-manager>' -A install
home-manager switch
nix-collect-garbage -d

# install, enable, and start syncthing
sudo apt install syncthing -y
sudo systemctl enable syncthing@$USER
sudo systemctl start syncthing@$USER

# get relevant config files from repositories
git clone 

# home-manager installation


# home-manager configuration

# stm32cubeide


# code composer studio


# orcaslicer


 

echo Hello, what is your name?

read varname

echo It\'s nice to meet you $varname
