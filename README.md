# installer-script

create separate scripts (i.e. minimum setup, full setup, etc.)

should use maybe xubuntu 22.04 or 22.xx with i3 install

update package manager
set up git credentials
set up syncthing
install config files from repository
install home-manager
add nix-channels (home-manager and nixpkgs)
update nix-channel and home-manager
nix-collect-garbage -d
install starship
install stm32cubeide(older version) and needed packages
install ccstudio and needed packages
install orcaslicer from source
download librefox and discord
thunderbird + email accounts 

sudo apt install git -y
setup credentials and stuff
git clone repo
cd this dir
chmod +x install.sh
sudo ./install.sh
