#!/bin/sh
if ! (($(which yay >/dev/null 2>&1))); then
	sudo pacman -S yay
fi
packages="
gnome-schedule
spotify
ttf-font-awesome
ttf-freefont
ttf-google-fonts-typewolf
vlc
wget
docker
docker-compose
shellcheck
visual-studio-code-bin
nodejs
npm
go
hub
vim
tmux
zsh
diff-so-fancy
fzf
exa
xclip
peek
chromium-widevine
adapta-gtk-theme
adwaita-icon-theme
arc-gtk-theme
arc-icon-theme
arc-solid-gtk-theme
snapd
peek
	"
for pkg in $packages; do
	yay -S --needed --noconfirm "$pkg"
done
sudo usermod -aG docker "$USER"
sudo systemctl enable docker
