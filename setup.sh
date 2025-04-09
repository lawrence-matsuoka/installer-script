#!/bin/bash

# update packages
sudo apt update && apt upgrade -y

# install git and curl
sudo apt install git curl -y

# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# Generate a new SSH key
# make user input instead
ssh-keygen -t ed25519 -C "Lawrence.Matsuoka@proton.me"

# Start the SSH agent in the background
eval "$(ssh-agent -s)"

# Add the SSH private key to the ssh-agent
ssh-add ~/.ssh/id_ed25519

# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
# Print out the public key 
cat ~/.ssh/id_ed25519.pub

echo Select and copy the contents of the id_ed25519.pub file displayed above
# Add SSH key in Github browser

# Create credentials for git
cd ~/.config/home-manager

touch home.nix

fill with this
{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "lawrence"
    userEmail = "Lawrence.Matsuoka@proton.me";
    extraConfig = {
      github.user = "lawrence-matsuoka";
    };
  };
}

# multi-user installation for Nix
sh <(curl -L https://nixos.org/nix/install) --daemon

# set and update nix channels
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update

# install home-manager
nix-shell '<home-manager>' -A install

# build, switch, and remove deprecated nix files
home-manager switch
nix-collect-garbage -d

# install, enable, and start syncthing
sudo apt install syncthing -y
sudo systemctl enable syncthing@$USER
sudo systemctl start syncthing@$USER

# get relevant config files from repositories
mkdir projects/
cd projects
git clone repo with dotfiles

# go back to home directory
cd

# stm32cubeide
curl

# code composer studio
curl

# orcaslicer
curl # from source at github

# virt-manager
# kali linux vm 
# or qemu
curl kali-linux-vm

 
# ask user for their name
echo Hello, what is your name?

read varname

echo It\'s nice to meet you $varname
