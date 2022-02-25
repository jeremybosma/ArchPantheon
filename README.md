# Installing Arch:
Get the Arch basic iso and boot it from usb you need to use `iwctl`and in there run `station wlan0 connect SSID` For your information `SSID is your wifi name.` you can see this on for example your phone. Use the key combination `CTRL + C` to get out of the iwctl.

# Installing pantheon:
So first you run `sudo pacman -Syu`
Since yay is not in the aur anymore you will have to build it yourself.
Do by using the following commands

```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Get out of the directory by running `cd` again. 

Now that the all the requirements are installed you want to build the desktop environment itself.

```pacman -S --needed pantheon lightdm-pantheon-greeter sound-theme-elementary switchboard lightdm-gtk-greeter elementary-icon-theme elementary-wallpapers pantheon-applications-menu wingpanel-indicator-session wingpanel-indicator-datetime```

And then run:

```yay -S pantheon-session-git gnome-settings-daemon-elementary pantheon-default-settings switchboard-plug-pantheon-tweaks-git urutau-icons-git pantheon-dock-git```

In one of those two you will be prompted to chose gnome, gtk, xfce and wrl or something. Chose gtk for it to work properly.

Then after that we want to install three more things.

```pacman -S --needed xorg lightdm nano```

Use `ls -1 /usr/share/xgreeters` and you should see io.elementary pop up.

Run `sudo nano /etc/lightdm/lightdm.conf` you should see `greeter-session` change that line to this ```greeter-session = io.elementary.greeter```

Now run:
`systemctl enable lightdm` 
`systemctl enable NetworkManager`

Then reboot the system by using:
`systemctl reboot`

Then when you reboot you’ll be prompted a login screen. In the topbar you will see a gnome logo click that and change it to the pantheon session. Like in the screenshot below. 

<img src="https://www.debugpoint.com/wp-content/uploads/2021/02/Login-screen-Pantheon-in-Arch.jpg">

## Common error
When you reboot you might be prompted with a lightdm failed to start. You will have to install or build plymouth and then run sudo pacman -S lightdm  again. Don’t remove the package before that or something it just downloads dependencies again. That’s how i fixed it. 

#### This should also work on other arch based distro's like artix but with most things being called different.
##### Repository created using own experience and help of the debugpoint blog post about it.
