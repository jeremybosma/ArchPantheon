cd

sudo pacman -Syu

pacman -S --needed git base-devel

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd

pacman pacman -S --needed pantheon lightdm-pantheon-greeter sound-theme-elementary switchboard lightdm-gtk-greeter elementary-icon-theme elementary-wallpapers pantheon-applications-menu wingpanel-indicator-session wingpanel-indicator-datetime

yay -S pantheon-session-git gnome-settings-daemon-elementary pantheon-default-settings switchboard-plug-pantheon-tweaks-git urutau-icons-git pantheon-dock-git

pacman -S --needed xorg lightdm nano

ls -1 /usr/share/xgreeters

echo from now on please follow the guide
