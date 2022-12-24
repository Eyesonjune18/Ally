#!/bin/bash

echo "[WARNING] Installing Ally will delete any aliases in your .bash_aliases file. Make sure to back it up before continuing."
echo -n "Do you still wish to continue? "

while true; do
	read -p "(y/n) " answer

	case $answer in
		[Yy]*)
			echo "Starting installation..."
			break
		;;
		[Nn]*)
			echo "Installation cancelled."
			exit
		;;
		*)
			echo -n "Please answer yes or no. "
		;;
	esac
done

echo "Creating folder for installation at ~/.local/bin/ally"
mkdir ~/.local/bin
mkdir ~/.local/bin/ally

install="$HOME/.local/bin/ally"

echo "Downloading script files to install folder"
curl -LJO https://github.com/Eyesonjune18/Ally/blob/f2c3ec3aac5da88a9ca015717ae7862220546943/src/mkal.sh -o "$install/mkal.sh"
curl -LJO https://github.com/Eyesonjune18/Ally/blob/f2c3ec3aac5da88a9ca015717ae7862220546943/src/scral.sh -o "$install/scral.sh"
curl -LJO https://github.com/Eyesonjune18/Ally/blob/f2c3ec3aac5da88a9ca015717ae7862220546943/src/real.sh -o "$install/real.sh"
curl -LJO https://github.com/Eyesonjune18/Ally/blob/f2c3ec3aac5da88a9ca015717ae7862220546943/src/dual.sh -o "$install/dual.sh"
curl -LJO https://github.com/Eyesonjune18/Ally/blob/f2c3ec3aac5da88a9ca015717ae7862220546943/src/rebash.sh -o "$install/rebash.sh"

echo "Creating alias configuration files"
# touch ~/.bash_aliases
# touch ~/.bash_aliases_persistent

echo "Ally has been installed successfully."
