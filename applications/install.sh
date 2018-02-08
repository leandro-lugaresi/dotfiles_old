#!/bin/sh
if which yaourt >/dev/null 2>&1; then
	packages="
spotify
ttf-font-awesome
ttf-freefont
ttf-google-fonts-typewolf
vlc
wget
franz
composer
visual-studio-code-bin
nodejs
npm
php
php-gd
php-intl
php-mcrypt
php-sqlite
go
hub
vim
tmux
zsh
diff-so-fancy
fzf
exa
	"
	for pkg in $packages; do
		yaourt -S --needed --noconfirm "$pkg"
	done
fi