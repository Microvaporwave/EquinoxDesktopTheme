#!/bin/bash
# Auto-installer for the equinox-desktop theme: https://github.com/Microvaporwave/EquinoxDesktopTheme
# Clumsily Written By Microvaporwave

# Copy icons to icon folder
cp -r equinox-icons ~/.icons

# Move GTK theme(s) to theme folder
cp -r equinox-gtk ~/.themes

# Copy rofi themes to config folder
sudo cp rofi/equinox-dark.rasi /usr/share/rofi/themes/
sudo cp rofi/equinox-light.rasi /usr/share/rofi/themes/

# Copy Polybar config to config folder & optionally install polywins & JetBrainsMono in required locations
cp -r polybar  ~/.config

read -p "Automatically download & install JetBrainsMono font? [y/N] " yn;
case $yn in
        [yY] ) echo Downloading and installing font;
               	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip -P ~/Downloads;
		sudo mkdir /usr/share/fonts/JetBrainsMono && sudo unzip ~/Downloads/JetBrainsMono.zip -d /usr/share/fonts/JetBrainsMono;;
        [nN] ) echo skipping...;;
        * ) echo invalid response;
		exit;;
esac

read -p "Install polywins in required location? [y/N] " yn;

case $yn in
	[yY] ) echo cloning polywins;
		git clone https://github.com/tam-carre/polywins.git ~/.config/polybar/scripts/polywins;
		sed -i  's|active_text_color="#250F0B"|active_text_color="#ECB3B2"|' ~/.config/polybar/scripts/polywins/polywins.sh;
		sed -i  's|inactive_text_color="#250F0B"|inactive_text_color="#ECB3B2"|' ~/.config/polybar/scripts/polywins/polywins.sh;;
	[nN] ) echo skipping...;;
	* ) echo invalid response;
		exit;;
esac

echo Finished




