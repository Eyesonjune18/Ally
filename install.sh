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
touch "$install/mkal.sh"
touch "$install/scral.sh"
touch "$install/real.sh"
touch "$install/dual.sh"
touch "$install/rebash.sh"

echo "Creating alias configuration files"
# touch ~/.bash_aliases
# touch ~/.bash_aliases_persistent

echo "Ally has been installed successfully."
