# NEW: [ARCHPANTHEON INSTALLER (WIFI-REQUIRED)](https://github.com/Jecta/ArchPantheon/blob/main/installer.sh)

Welcome to the guide for installing Arch Linux with the Pantheon desktop environment!

Before we begin, make sure you have the Arch Linux basic iso and have booted it from a USB drive.

To connect to your WiFi network, use the iwctl command and enter station wlan0 connect SSID, replacing "SSID" with the name of your WiFi network. You can typically find this name (also known as the SSID) on a device connected to the network, such as your phone. If you need to exit iwctl, use the key combination CTRL + C.

Next, we will update the system packages by running sudo pacman -Syu. Since Yay is no longer in the AUR (Arch User Repository), we will need to build it ourselves. To do this, enter the following commands:

```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Get out of the directory by running `cd` again. 

Once Yay is installed, we can move on to installing the Pantheon desktop environment. First, run the following command to install the necessary packages:

```pacman -S --needed pantheon lightdm-pantheon-greeter sound-theme-elementary switchboard lightdm-gtk-greeter elementary-icon-theme elementary-wallpapers pantheon-applications-menu wingpanel-indicator-session wingpanel-indicator-datetime```

Then, run the following command to install additional Pantheon packages:

```yay -S pantheon-session-git gnome-settings-daemon-elementary pantheon-default-settings switchboard-plug-pantheon-tweaks-git urutau-icons-git pantheon-dock-git```

During the installation process, you may be prompted to choose between different options such as Gnome, GTK, Xfce, and WRL. Make sure to select GTK for the desktop environment to work properly.

Finally, we need to install a few more packages:

```pacman -S --needed xorg lightdm nano```

To verify that the io.elementary greeter is installed, run ls -1 /usr/share/xgreeters. You should see it listed.

Next, open the lightdm.conf file by running sudo nano /etc/lightdm/lightdm.conf. Look for the greeter-session line and change it to greeter-session = io.elementary.greeter.

Then, enable LightDM and NetworkManager by running the following commands:
`systemctl enable lightdm` 
`systemctl enable NetworkManager`

Then reboot the system by using:
`systemctl reboot`

Now we can reboot the system by entering systemctl reboot. Upon rebooting, you should be presented with a login screen. In the top bar, click on the Gnome logo and select the Pantheon session to log in.

If you encounter an error saying that LightDM failed to start, you may need to install or build Plymouth and then run sudo pacman -S lightdm again. Do not remove the package before doing this, as it will just download the dependencies again.

Please note that this guide should also work on other Arch-based distributions such as Artix, although the package names may be different. This repository was created using my own experiences and with the help of the Debugpoint blog post on the subject