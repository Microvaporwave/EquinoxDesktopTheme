# EquinoxDesktopTheme
![example-image](https://github.com/Microvaporwave/EquinoxDesktopTheme/blob/main/images/desktop.png?raw=true)
A simple theme for XFCE-Desktops


**Materials Used:**

The wallpaper:  [the Secret Place](https://www.artstation.com/artwork/4y1b4) by Aenami upscaled to 4k using [waifu2x](http://waifu2x.udp.jp/)  
Polybar with [Polywins](https://github.com/jattboe/polywins) for taskbar-like functionality  
Rofi as launcher with color-theme generated from wallpaper using [pywal](https://github.com/dylanaraps/pywal)  
Terminal colors also applied using pywal  


**Installation:**

To install this theme first clone this repository, then run the autoinstaller:  
```
git clone https://github.com/Microvaporwave/EquinoxDesktopTheme.git
cd EquinoxDesktopTheme
./autoinstaller.sh
```  
(Autoinstaller was only written for debian, if you are using any other distros your themes might have to be stored elsewhere)  
Icons, window-manager-theme & GTK-Themes should now be available in the xfce-settings-manager.  
The rofi theme can be applied using rofi-theme-selector.  
The dimensions of the polybar were hardcoded for 4k, if you are using lower resolutions you might want to lower the height and text sizes under ~/.config/polybar/config.ini  


**Other:**

If you need a dedicated power button on your taskbar, just middle-mouse-click Xfdesktop, this will show the standard XFCE-shutdown-prompt. This feature was unintentional at first, but proved to quite practical for daily usage.


