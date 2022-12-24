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
curl -sLo "$install/mkal.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/mkal.sh
curl -sLo "$install/scral.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/scral.sh
curl -sLo "$install/real.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/real.sh
curl -sLo "$install/dual.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/dual.sh
curl -sLo "$install/rebash.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/rebash.sh

echo "Setting up permissions for script files"
chmod +x "$install/mkal.sh"
chmod +x "$install/scral.sh"
chmod +x "$install/real.sh"
chmod +x "$install/dual.sh"
chmod +x "$install/rebash.sh"

echo "Creating alias configuration files"
curl -sLo "$HOME/.bash_aliases_persistent" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/installer/.bash_aliases_persistent
cp "$HOME/.bash_aliases_persistent" "$HOME/.bash_aliases"

echo "Ally has been installed successfully. Please restart your terminal or type \"source ~/.bashrc\" to apply changes."
