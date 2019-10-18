#!/bin/sh
alias reload!='exec "$SHELL" -l'
alias update='sudo pacman -Syu'

alias elqa='export AWS_PROFILE=el_qa AWS_DEFAULT_PROFILE=el_qa ENV=production'
alias elprod='export AWS_PROFILE=el_prod AWS_DEFAULT_PROFILE=el_prod ENV=production'

alias reload-gnome-shell='dbus-send --type=method_call --print-reply --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:"global.reexec_self()"'
