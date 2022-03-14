#!/bin/bash
# Auto-installer for the equinox-desktop theme: https://github.com/Microvaporwave/EquinoxDesktopTheme
# Clumsily Written By Microvaporwave

# Copy icons to icon folder
mkdir ~/.icons
cp -r  equinox-icons ~/.icons

# Move GTK theme(s) to theme folder
cp -r equinox-gtk ~/.themes

# Copy Polybar config to config folder & optionally install polywins in required location
cp -r polybar  ~/.config

read -p "Install polywins in required location? [y/N] " yn;

case $yn in
	[yY] ) echo cloning polywins;
		mkdir ~/.config/polybar/scripts/;
		git clone https://github.com/tam-carre/polywins.git ~/.config/polybar/scripts/polywins;
		exit;;
	[nN] ) echo skipping...;
		exit;;
	* ) echo invalid response;
esac

echo All Done




