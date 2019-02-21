#!/bin/sh
if ! (( $(which yaourt >/dev/null 2>&1) )); then
	sudo pacman -S yaourt
fi
packages="
gnome-schedule
spotify
ttf-font-awesome
ttf-freefont
ttf-google-fonts-typewolf
vlc
wget
franz
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
	"
for pkg in $packages; do
	yaourt -S --needed --noconfirm "$pkg"
done
sudo usermod -aG docker "$USER"
sudo systemctl enable docker
