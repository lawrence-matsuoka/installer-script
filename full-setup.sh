#!/bin/bash
# ask user for their name

# update packages
sudo apt update && apt upgrade

# install git and curl
sudo apt install git curl

# create credentials for git

# multi-user installation for Nix
sh <(curl -L https://nixos.org/nix/install) --daemon

# install, enable, and start syncthing
sudo apt install syncthing
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
